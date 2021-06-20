object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  ActiveControl = edtNumber1
  BorderStyle = bsDialog
  Caption = 'Calculadora'
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
  object lbNumber1: TLabel
    Left = 64
    Top = 37
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 1'
  end
  object lbNumber2: TLabel
    Left = 64
    Top = 85
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 2'
  end
  object btnSomar: TButton
    Left = 64
    Top = 139
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 145
    Top = 139
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 1
    OnClick = btnSubtrairClick
  end
  object btnDividir: TButton
    Left = 226
    Top = 139
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 2
    OnClick = btnDividirClick
  end
  object btnMultiplicar: TButton
    Left = 307
    Top = 139
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = btnMultiplicarClick
  end
  object edtNumber1: TEdit
    Left = 64
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object gbResultado: TGroupBox
    Left = 226
    Top = 37
    Width = 185
    Height = 77
    Caption = 'Resultado'
    TabOrder = 5
    object lbResultado: TLabel
      Left = 9
      Top = 32
      Width = 168
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object edtMaskEditNumber2: TMaskEdit
    Left = 64
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
    Text = ''
  end
end
