object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'eNota CleanCode Treinamento'
  ClientHeight = 136
  ClientWidth = 372
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
  object btnTestar: TButton
    Left = 286
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 0
    OnClick = btnTestarClick
  end
  object rgOpcoes: TRadioGroup
    Left = 8
    Top = 8
    Width = 353
    Height = 82
    Caption = ' Op'#231#245'es '
    ItemIndex = 0
    Items.Strings = (
      '  TControllerNotaFiscal.New.EnviarNotaSefaz;'
      '  TControllerNotaFiscal.New.EnviarNotaSefazSemEmail;'
      '  TControllerNotaFiscal.New.GerarNotaPedido(21);')
    TabOrder = 1
  end
end
