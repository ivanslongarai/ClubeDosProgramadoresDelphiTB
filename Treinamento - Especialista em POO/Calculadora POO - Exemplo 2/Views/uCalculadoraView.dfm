object frmCalculadora: TfrmCalculadora
  Left = 0
  Top = 0
  ActiveControl = edtValor1
  BorderStyle = bsDialog
  Caption = 'Calculadora'
  ClientHeight = 159
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNumber1: TLabel
    Left = 18
    Top = 6
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object lbResultado: TLabel
    Left = 261
    Top = 6
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label1: TLabel
    Left = 138
    Top = 6
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object btnSomar: TButton
    Left = 14
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 14
    Top = 85
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 1
    OnClick = btnSubtrairClick
  end
  object btnDividir: TButton
    Left = 89
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 2
    OnClick = btnDividirClick
  end
  object btnMultiplicar: TButton
    Left = 88
    Top = 85
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = btnMultiplicarClick
  end
  object edtValor1: TEdit
    Left = 14
    Top = 25
    Width = 112
    Height = 21
    TabOrder = 4
    OnKeyPress = edtValor1KeyPress
  end
  object edtResultado: TEdit
    Left = 257
    Top = 25
    Width = 83
    Height = 21
    Alignment = taCenter
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object btnLimpar: TButton
    Left = 88
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btnLimparClick
  end
  object edtValor2: TEdit
    Left = 134
    Top = 25
    Width = 112
    Height = 21
    TabOrder = 7
    OnKeyPress = edtValor1KeyPress
  end
end
