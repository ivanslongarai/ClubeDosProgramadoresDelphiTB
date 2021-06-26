object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'DelphiToHero'
  ClientHeight = 435
  ClientWidth = 694
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
  object pnlAllClient: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 435
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object pnlLeft: TPanel
      Left = 1
      Top = 1
      Width = 113
      Height = 433
      Align = alLeft
      ParentBackground = False
      TabOrder = 0
      object btnPrincipal: TSpeedButton
        Left = 1
        Top = 74
        Width = 111
        Height = 71
        Align = alTop
        Caption = 'PRINCIPAL'
        Flat = True
        OnClick = btnPrincipalClick
        ExplicitLeft = -3
        ExplicitTop = 80
      end
      object btnUsuarios: TSpeedButton
        Left = 1
        Top = 145
        Width = 111
        Height = 71
        Align = alTop
        Caption = 'USU'#193'RIOS'
        Flat = True
        OnClick = btnUsuariosClick
        ExplicitLeft = -4
        ExplicitTop = 194
      end
      object pnlLogo: TPanel
        Left = 1
        Top = 1
        Width = 111
        Height = 73
        Align = alTop
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnlClient: TPanel
      Left = 114
      Top = 1
      Width = 579
      Height = 433
      Align = alClient
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 119
      object pnlTop: TPanel
        Left = 1
        Top = 1
        Width = 577
        Height = 73
        Align = alTop
        ParentBackground = False
        TabOrder = 0
      end
      object pnlPages: TPanel
        Left = 1
        Top = 74
        Width = 577
        Height = 358
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 5
        ExplicitTop = 80
      end
    end
  end
end
