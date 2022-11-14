object Form1: TForm1
  Left = 979
  Top = 115
  Width = 558
  Height = 346
  Caption = 'F684z'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 160
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1079#1084#1077#1088#1085#1086#1089#1090#1100' '#1084#1072#1090#1088#1080#1094#1099
  end
  object Edit_n: TEdit
    Left = 184
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 40
    object OpenTextFile1: TMenuItem
      Caption = 'Open_Text_File'
      object OpenFile1: TMenuItem
        Caption = 'Open_File'
        OnClick = OpenFile1Click
      end
    end
    object ZapMatr1: TMenuItem
      Caption = 'Zap_Matr'
      object Zap1: TMenuItem
        Caption = 'Zap'
        OnClick = Zap1Click
      end
    end
    object P1: TMenuItem
      Caption = 'Print_Matr'
      object Print1: TMenuItem
        Caption = 'Print'
        OnClick = Print1Click
      end
    end
    object CloseFile1: TMenuItem
      Caption = 'Close_File'
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 80
    Top = 40
  end
end
