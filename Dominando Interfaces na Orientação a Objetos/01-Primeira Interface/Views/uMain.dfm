object frmMain: TfrmMain
  Left = 0
  Top = 0
  ActiveControl = edtName
  BorderStyle = bsDialog
  Caption = 'Primeira Interface'
  ClientHeight = 194
  ClientWidth = 294
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
  object lbName: TLabel
    Left = 24
    Top = 5
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lbSurname: TLabel
    Left = 160
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object btnProcess: TButton
    Left = 206
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnProcessClick
  end
  object edtSurName: TEdit
    Left = 160
    Top = 24
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Longarai'
  end
  object edtName: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Ivan'
  end
  object mmFullName: TMemo
    Left = 24
    Top = 105
    Width = 257
    Height = 56
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
end
