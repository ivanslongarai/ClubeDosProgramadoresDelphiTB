object frmMain: TfrmMain
  Left = 0
  Top = 0
  ActiveControl = edtName
  BorderStyle = bsDialog
  Caption = 'First Interface'
  ClientHeight = 330
  ClientWidth = 319
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
    Left = 19
    Top = 9
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lbSurname: TLabel
    Left = 155
    Top = 12
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object lbPersonType: TLabel
    Left = 19
    Top = 51
    Width = 60
    Height = 13
    Caption = 'Person Type'
  end
  object lbDocumentId: TLabel
    Left = 112
    Top = 51
    Width = 61
    Height = 13
    Caption = 'Document Id'
  end
  object btnProcess: TButton
    Left = 236
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 4
    OnClick = btnProcessClick
  end
  object edtSurName: TEdit
    Left = 155
    Top = 28
    Width = 156
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Longarai'
  end
  object edtName: TEdit
    Left = 19
    Top = 26
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Ivan'
  end
  object mmFullName: TMemo
    Left = 19
    Top = 122
    Width = 292
    Height = 191
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object cbPersonType: TComboBox
    Left = 19
    Top = 67
    Width = 78
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'Individual'
    OnCloseUp = cbPersonTypeCloseUp
    Items.Strings = (
      'Individual'
      'Corporate')
  end
  object cbClearList: TCheckBox
    Left = 20
    Top = 102
    Width = 65
    Height = 17
    Caption = 'Clear List'
    TabOrder = 6
  end
  object edtDocumentId: TEdit
    Left = 112
    Top = 70
    Width = 108
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    Text = '123456789'
  end
end
