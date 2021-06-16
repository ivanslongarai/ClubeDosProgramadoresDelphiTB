object frmFormProperties: TfrmFormProperties
  Left = 0
  Top = 0
  BorderWidth = 10
  Caption = 'Reading Form Properties'
  ClientHeight = 203
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object mmMethods: TMemo
    Left = 0
    Top = 41
    Width = 156
    Height = 121
    Align = alLeft
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 162
  end
  object mmProperties: TMemo
    Left = 312
    Top = 41
    Width = 155
    Height = 121
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 318
    ExplicitTop = 35
  end
  object mmFields: TMemo
    Left = 156
    Top = 41
    Width = 156
    Height = 121
    Align = alLeft
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    ExplicitTop = 0
    ExplicitHeight = 162
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 162
    Width = 467
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 160
    ExplicitTop = 112
    ExplicitWidth = 185
    DesignSize = (
      467
      41)
    object btnGetInfo: TButton
      Left = 352
      Top = 16
      Width = 115
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Get Information'
      TabOrder = 0
      OnClick = btnGetInfoClick
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitLeft = 144
    ExplicitWidth = 185
    object pnlMethods: TPanel
      Left = 0
      Top = 0
      Width = 150
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Methods'
      TabOrder = 0
    end
    object pnlFields: TPanel
      Left = 150
      Top = 0
      Width = 156
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Fields'
      TabOrder = 1
    end
    object pnlProperties: TPanel
      Left = 306
      Top = 0
      Width = 161
      Height = 41
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Properties'
      TabOrder = 2
      ExplicitLeft = 256
      ExplicitTop = -6
      ExplicitWidth = 121
    end
  end
end
