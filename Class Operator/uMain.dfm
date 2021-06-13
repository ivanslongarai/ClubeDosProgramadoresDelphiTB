object frmClassOperatorStudy: TfrmClassOperatorStudy
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'ClassOperatorStudy'
  ClientHeight = 231
  ClientWidth = 160
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
  object btnAddOperator: TButton
    Left = 27
    Top = 9
    Width = 105
    Height = 25
    Caption = 'Add Operator'
    TabOrder = 0
    OnClick = btnAddOperatorClick
  end
  object btnImplicit: TButton
    Left = 27
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Implicit'
    TabOrder = 1
    OnClick = btnImplicitClick
  end
  object btnPositive: TButton
    Left = 27
    Top = 71
    Width = 105
    Height = 25
    Caption = 'Positive'
    TabOrder = 2
    OnClick = btnPositiveClick
  end
  object btnNegative: TButton
    Left = 27
    Top = 102
    Width = 105
    Height = 25
    Caption = 'Negative'
    TabOrder = 3
    OnClick = btnNegativeClick
  end
  object btnInc: TButton
    Left = 27
    Top = 133
    Width = 105
    Height = 25
    Caption = 'Inc'
    TabOrder = 4
    OnClick = btnIncClick
  end
  object btnDec: TButton
    Left = 27
    Top = 164
    Width = 105
    Height = 25
    Caption = 'Dec'
    TabOrder = 5
    OnClick = btnDecClick
  end
  object btnEquals: TButton
    Left = 27
    Top = 196
    Width = 105
    Height = 25
    Caption = 'Equals'
    TabOrder = 6
    OnClick = btnEqualsClick
  end
end
