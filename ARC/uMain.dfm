object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Automatic Reference Counting (ARC)'
  ClientHeight = 212
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnTest: TButton
    Left = 24
    Top = 24
    Width = 161
    Height = 25
    Caption = 'Testing Interface x Class'
    TabOrder = 0
    OnClick = btnTestClick
  end
  object btnUnsafe: TButton
    Left = 24
    Top = 55
    Width = 161
    Height = 25
    Caption = 'Testing Unsafe'
    TabOrder = 1
    OnClick = btnUnsafeClick
  end
  object btnWeak: TButton
    Left = 24
    Top = 86
    Width = 161
    Height = 25
    Caption = 'Testing Weak'
    TabOrder = 2
    OnClick = btnWeakClick
  end
end
