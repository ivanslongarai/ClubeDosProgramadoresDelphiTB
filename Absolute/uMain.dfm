object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Absolute'
  ClientHeight = 188
  ClientWidth = 446
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
  object btnAbsoluteEdit: TButton
    Left = 23
    Top = 21
    Width = 121
    Height = 25
    Caption = 'Implict Edit Casting'
    TabOrder = 0
    OnClick = btnAbsoluteEditClick
  end
  object edtAbsolute: TEdit
    Left = 23
    Top = 92
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'ivan longarai'
  end
  object mmAbsolute: TMemo
    Left = 175
    Top = 92
    Width = 249
    Height = 74
    Ctl3D = False
    Lines.Strings = (
      'programador delphi desde 2004')
    ParentCtl3D = False
    TabOrder = 2
  end
  object btnAbsoluteMemo: TButton
    Left = 175
    Top = 21
    Width = 121
    Height = 25
    Caption = 'Implict Memo Casting'
    TabOrder = 3
    OnClick = btnAbsoluteMemoClick
  end
  object btnNormalEdit: TButton
    Left = 23
    Top = 45
    Width = 121
    Height = 25
    Caption = 'Normal Edit Casting'
    TabOrder = 4
    OnClick = btnNormalEditClick
  end
  object btnNormalMemo: TButton
    Left = 175
    Top = 45
    Width = 121
    Height = 25
    Caption = 'Normal Memo Casting'
    TabOrder = 5
    OnClick = btnNormalMemoClick
  end
end
