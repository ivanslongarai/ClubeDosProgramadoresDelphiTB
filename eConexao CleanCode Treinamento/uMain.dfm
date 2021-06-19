object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderWidth = 10
  Caption = 'eConexao CleanCode Treinamento'
  ClientHeight = 182
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gridTeste: TDBGrid
    Left = 0
    Top = 41
    Width = 468
    Height = 141
    Align = alClient
    DataSource = dsTeste
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitTop = 104
    ExplicitWidth = 185
    object btnTestar: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Testar'
      TabOrder = 0
      OnClick = btnTestarClick
    end
    object DBNavigator: TDBNavigator
      Left = 81
      Top = -1
      Width = 225
      Height = 25
      DataSource = dsTeste
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 1
    end
    object rbListAll: TRadioButton
      Left = 324
      Top = -3
      Width = 113
      Height = 17
      Caption = 'Lista Todas colunas'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbListAllClick
    end
    object rbListFields: TRadioButton
      Left = 324
      Top = 12
      Width = 136
      Height = 17
      Caption = 'Lista colunas informadas'
      TabOrder = 3
      OnClick = rbListAllClick
    end
  end
  object dsTeste: TDataSource
    AutoEdit = False
    Left = 208
    Top = 80
  end
end
