object frmCmdRunner: TfrmCmdRunner
  Left = 0
  Top = 0
  Caption = 'Cmd Runner'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 27
    Align = alTop
    TabOrder = 1
    object btnOpen: TBitBtn
      Left = 1
      Top = 1
      Width = 25
      Height = 25
      Hint = 'New'
      Align = alLeft
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBCBBBB1C171717111219131318131318121217
        1111161111140F0F140E0E120D0D0E0A0A151010C1C0C0FFFFFFFFFFFF1D1818
        332E2E373232373232373231363031342F2F2F29292D28282C27272B26262924
        24272222161111FFFFFFFFFFFF241E1E3A35353B36363B36353B35353A353535
        3030615F5F5B59595957575856565958583F3A3A0E0909FFFFFFFFFFFF2A2524
        3E38383C37373F3A3A403B3B3F3939322C2CC7CDCDBABFBFB9BEBEB8BDBDBFC4
        C46565640F0A09FFFFFFFFFFFF2F29295551516B6868474242433E3E45403F42
        3D3D342E2E312B2B2F28292C26262A23242F2929181212FFFFFFFFFFFF373131
        453F40D5D9D9D2D6D63F3A3A474141474242443F3F403B3B3E39383B36363933
        343731311A1415FFFFFFFFFFFF3F3939595454565252E6E9E9D3D6D659565666
        6262635F5F5E5A59575353504B4C494343403A3B1C1616FFFFFFFFFFFF5D5A5B
        706E6E6F6D6D696766EBEDEDCACCCC615D5E6461615F5B5B5B5757575252534F
        4F504B4B352F2FFFFFFFFFFFFF605E5E7472727372716D6B6BEAECECDDDEDE64
        6161676464625E5E5C5858575353534E4E4F4A4A322D2DFFFFFFFFFFFF636161
        7675756D6D6CEDEFEFEDEEED6461616D6C6C6966666360605D5959585453534E
        4E4F494A322D2DFFFFFFFFFFFF656363727171EDEEEEFFFFFF6F6E6E7372726F
        6D6D6966676360605D5959575252524D4D4D4948312B2CFFFFFFFFFFFF636061
        858585A6A6A67F7D7E7776767473736E6C6D686565625F5F5C5858565151504C
        4C4C47472E2827FFFFFFFFFFFF5F5D5D7371717573737877777675757170706C
        6969666363605C5C595555544E4E4F4A4A474242322C2CFFFFFFFFFFFFCCCBCB
        5F5D5D636161646262625F5F5D5B5B585555524E4E4C47474540403E39393833
        32332D2DC4C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnClick = btnOpenClick
      ExplicitLeft = -5
      ExplicitTop = -4
    end
    object btnClose: TBitBtn
      Left = 26
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Close active page'
      Align = alLeft
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFDFDFBFAFAF2F2F2F6F1E8C3C7D7FBF6ECF2F2F1FA
        FAFAFCFCFCF5F5F5F7F3EAC5CAD8F7F3E9EFEFEFF9F9F9FEFEFEFFFEFFFEFEFE
        FFFFFF96B0E70024CB98B1E8FFFFFFFFFFFFFFFFFFFFFFFF93AEE60023CA97B0
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96AFE60037D10350D60037D096B0E6FF
        FFFFFFFFFF96AEE40037D00350D60037D096AFE6FFFFFFFFFFFFFFFFFF8BA9E7
        003BD30655DA0655DA0655DA003AD3A4BAEAA4B9E80039D20655DA0655DA0655
        DA003BD48BA9E6FFFFFFFFFFFF8CA9E50041D60958DD0857DC0857DC0958DC00
        4AD90049D90958DC0957DC0858DC0858DC0040D68CA9E5FFFFFFFFFFFFFFFFFF
        96B1E70044D90A5BDF0B5BDF0A5BDF0A5BDF0B5BDE0A5BDE0A5BDE0B5BDF0044
        D997B1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AB4E90052DE0C5EE10D5EE10C
        5EE10D5EE10D5EE10D5EE10051DE99B4E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF125DDB0C61E40F62E40F61E40F62E30E62E40C61E4115DDBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0F5DDD0A61E61165E61165E611
        65E61165E61165E61165E60B62E60D5CDEFFFFFCFFFFFFFFFFFFFFFFFFFFFFFC
        1060E00B64E91368E81368E91368E80B63E80B63E81268E91368E81368E90B64
        E90F60E0FFFFFCFFFFFFFFFFFF3E7FE50261EA156BEB156BEB156AEA0964EB50
        8EEB4E8EEA0964EA146BEB156BEB156AEB0261EB3E7FE5FFFFFFFFFFFFFFFEFC
        317DE90B67ED166DEC0B67ED317CE9FFFFFCFFFFFC307DE80B67ED166DEC0C67
        ED2E7AE8FFFDFCFFFFFFFFFFFFFFFFFFFFFFFC3884EA0062EE3983EBFFFFFCFF
        FFFFFFFFFFFFFFFC3884EB0162EE3883EBFFFFFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFBFB679EEDFEFBFBFFFFFFFFFFFFFFFFFFFFFFFFFDFBFB679EEEFEFB
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = btnCloseClick
      ExplicitLeft = 32
      ExplicitTop = -4
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 27
    Width = 635
    Height = 253
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    ExplicitTop = 21
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 280
    Width = 635
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitLeft = 64
    ExplicitTop = 160
    ExplicitWidth = 0
  end
end
