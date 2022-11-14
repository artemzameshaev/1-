object Form1: TForm1
  Left = 1119
  Top = 201
  Width = 468
  Height = 177
  Caption = 'F2466'
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
    object OpenDialogFile1: TMenuItem
      Caption = 'Open_Text_File'
      object OpenFile1: TMenuItem
        Caption = 'Open_File'
        OnClick = OpenFile1Click
      end
    end
    object ZamenaSimvalov1: TMenuItem
      Caption = 'Zamena_Simvalov'
      object Zamenit1: TMenuItem
        Caption = 'Zamenit'
        OnClick = Zamenit1Click
      end
    end
    object VivodZameni1: TMenuItem
      Caption = 'Vivod_Zameni'
      object Vivod1: TMenuItem
        Caption = 'Vivod'
        OnClick = Vivod1Click
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
    Left = 40
    Top = 16
  end
end
