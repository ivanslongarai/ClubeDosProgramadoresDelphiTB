object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Studying RTTI'
  ClientHeight = 212
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 56
    Top = 32
    object miStudies: TMenuItem
      Caption = 'Studies'
      object miGettingstartedWithRTTI: TMenuItem
        Caption = 'Getting started with RTTI'
        OnClick = miGettingstartedWithRTTIClick
      end
    end
  end
end
