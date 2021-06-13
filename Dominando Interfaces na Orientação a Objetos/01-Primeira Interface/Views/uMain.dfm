object frmMain: TfrmMain
  Left = 0
  Top = 0
  ActiveControl = edtName
  BorderStyle = bsDialog
  Caption = 'First Interface'
  ClientHeight = 214
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
    Left = 19
    Top = 19
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lbSurname: TLabel
    Left = 155
    Top = 22
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object lbPersonType: TLabel
    Left = 19
    Top = 61
    Width = 60
    Height = 13
    Caption = 'Person Type'
  end
  object btnProcess: TButton
    Left = 201
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = btnProcessClick
  end
  object edtSurName: TEdit
    Left = 155
    Top = 38
    Width = 121
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Longarai'
  end
  object edtName: TEdit
    Left = 19
    Top = 36
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
    Width = 257
    Height = 79
    TabStop = False
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object cbPersonType: TComboBox
    Left = 19
    Top = 77
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'Individual'
    Items.Strings = (
      'Individual'
      'Corporate')
  end
  object cbClearList: TCheckBox
    Left = 22
    Top = 104
    Width = 65
    Height = 17
    Caption = 'Clear List'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
end
