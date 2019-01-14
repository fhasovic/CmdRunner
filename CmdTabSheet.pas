unit CmdTabSheet;

interface

uses
  Windows, Classes, Messages, ComCtrls, ShellAPI, SysUtils, ExtCtrls;

type
  TCmdTabSheet = class(TTabSheet)
  protected
    procedure Resize; override;
  private
    ConsoleHandle: HWND;
    ConsolePID: DWORD;
    Timer: TTimer;

    procedure RunCmd;
    procedure TimerOnTimer(Sender: TObject);
    function IsCmdRunning: Boolean;
  public
    constructor Create(PageCtrl: TPageControl); reintroduce;
    destructor Destroy; override;

    procedure Close;
  end;

  function GetConsoleWindow: HWND; stdcall; external kernel32 name 'GetConsoleWindow';
  function AttachConsole(dwProcessId: DWORD): BOOL; stdcall; external kernel32 name 'AttachConsole';

implementation

uses TlHelp32;

{ TCmdTabSheet }

procedure TCmdTabSheet.Close;
begin
  Timer.Enabled := False;
  if ConsoleHandle <> 0 then
    SendMessage(ConsoleHandle, WM_CLOSE,0,0);
  TabVisible := False;
end;

constructor TCmdTabSheet.Create(PageCtrl: TPageControl);
begin
  inherited Create(PageCtrl.Owner);
  ConsoleHandle := 0;
  ConsolePID := 0;
  PageControl := PageCtrl;
  Caption :=  Format('Cmd %d', [TabIndex]);
  PageCtrl.ActivePage := Self;

  Timer := TTimer.Create(Self);
  Timer.Interval := 250;
  Timer.OnTimer := TimerOnTimer;
  Timer.Enabled := False;

  RunCmd;

  if ConsoleHandle <> 0 then
    Timer.Enabled := True;
end;

destructor TCmdTabSheet.Destroy;
begin
  inherited;
end;

function TCmdTabSheet.IsCmdRunning: Boolean;
var
  hSnapshot: THandle;
  EntryParentProc: TProcessEntry32;
begin
  Result := False;
  hSnapshot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if hSnapshot = INVALID_HANDLE_VALUE then
    Exit;

  try
    EntryParentProc.dwSize := SizeOf(EntryParentProc);
    if Process32First(hSnapshot, EntryParentProc) then
      repeat
        if EntryParentProc.th32ProcessID = ConsolePID then
        begin
          Result := True;
          Break;
        end;
      until not Process32Next(hSnapshot, EntryParentProc);
  finally
    CloseHandle(hSnapshot);
  end;
end;

procedure TCmdTabSheet.Resize;
begin
  inherited Resize;
  if IsWindow(ConsoleHandle) then
    SetWindowPos(ConsoleHandle, 0, 0, 0, Width, Height, SWP_ASYNCWINDOWPOS); //SWP_NOSIZE
end;

procedure TCmdTabSheet.RunCmd;
var
  CmdLine: string;
  Attempt: Integer;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  Style: Longint;
begin
  ConsoleHandle := 0;
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  FillChar(ProcessInfo, SizeOf(TProcessInformation), 0);
  StartupInfo.cb := SizeOf(TStartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := SW_HIDE;

  CmdLine := 'cmd.exe';
  UniqueString(CmdLine);
  if CreateProcess(nil, PChar(CmdLine), nil, nil, False,
    CREATE_NEW_CONSOLE, nil, nil, StartupInfo, ProcessInfo) then
  begin
    Attempt := 100;
    while (Attempt > 0) do
    begin
      if AttachConsole(ProcessInfo.dwProcessId) then
      begin
        ConsoleHandle := GetConsoleWindow;
        ConsolePID := ProcessInfo.dwProcessId;
        FreeConsole;
        Break;
      end;
      Sleep(10);
      Dec(Attempt);
    end;
    CloseHandle(ProcessInfo.hThread);
    CloseHandle(ProcessInfo.hProcess);
  end;

  if ConsoleHandle <> 0 then
  begin
    Windows.SetParent(ConsoleHandle, Handle);

    Style := GetWindowLong(ConsoleHandle, GWL_STYLE);
    SetWindowLong(ConsoleHandle, GWL_STYLE, Style and (not (WS_CAPTION)) or DS_MODALFRAME or WS_DLGFRAME);
    Resize;
    ShowWindow(ConsoleHandle, SW_MAXIMIZE); // SW_SHOWMAXIMIZED, SW_MAXIMIZE
  end;

end;

procedure TCmdTabSheet.TimerOnTimer(Sender: TObject);
begin
  if not IsCmdRunning then
    Close;
end;

end.