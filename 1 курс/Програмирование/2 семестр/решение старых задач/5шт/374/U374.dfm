object Form1: TForm1
  Left = 1119
  Top = 127
  Width = 351
  Height = 221
  Caption = 'Form1'
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
    Left = 24
    Top = 16
    Width = 131
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1079#1084#1077#1088' '#1084#1072#1090#1088#1080#1094#1099
  end
  object Label2: TLabel
    Left = 72
    Top = 56
    Width = 12
    Height = 13
    Caption = #1085#1072
  end
  object Edit_n: TEdit
    Left = 48
    Top = 72
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Edit_m: TEdit
    Left = 48
    Top = 32
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 32
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
    object PrintMatr1: TMenuItem
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
    Left = 128
    Top = 64
  end
end
