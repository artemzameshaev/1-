object Form1: TForm1
  Left = 862
  Top = 233
  Width = 585
  Height = 540
  Caption = 'F432'
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
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object OpenTextfile1: TMenuItem
      Caption = 'Open_Text_file'
      object OpenFile1: TMenuItem
        Caption = 'Open_File'
        OnClick = OpenFile1Click
      end
    end
    object CalculateP1: TMenuItem
      Caption = 'Calculate_P'
      object Cal1: TMenuItem
        Caption = 'Cal'
        OnClick = Cal1Click
      end
    end
    object VvodP1: TMenuItem
      Caption = 'Vvod_Kof'
      object Vvod1: TMenuItem
        Caption = 'Vvod'
        OnClick = Vvod1Click
      end
    end
    object PrintP1: TMenuItem
      Caption = 'Print_P'
      object Print1: TMenuItem
        Caption = 'Print'
        OnClick = Print1Click
      end
    end
    object CloseFile1: TMenuItem
      Caption = 'Close_File'
      object CLose1: TMenuItem
        Caption = 'CLose'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 48
    Top = 16
  end
end
