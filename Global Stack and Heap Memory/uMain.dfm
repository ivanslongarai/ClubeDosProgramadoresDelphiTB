object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Global, Stack and Heap Memory'
  ClientHeight = 281
  ClientWidth = 505
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
  object btnStack: TButton
    Left = 16
    Top = 40
    Width = 89
    Height = 25
    Caption = 'Stack Memory'
    TabOrder = 0
    OnClick = btnStackClick
  end
  object btnHeap: TButton
    Left = 16
    Top = 71
    Width = 89
    Height = 25
    Caption = 'Heap Memory'
    TabOrder = 1
    OnClick = btnHeapClick
  end
  object btnGlobalMemory: TButton
    Left = 16
    Top = 9
    Width = 89
    Height = 25
    Caption = 'Global Memory'
    TabOrder = 2
    OnClick = btnGlobalMemoryClick
  end
  object Memo1: TMemo
    Left = 16
    Top = 102
    Width = 465
    Height = 155
    Ctl3D = False
    Lines.Strings = (
      ''
      
        'Now that all about memory is clear, you can safely (in most case' +
        's) ignore this piece of '
      'information and '
      'simply continue writing Delphi programs as you did yesterday.'
      ''
      
        'Of course, you should be aware of when and how to manually alloc' +
        'ate/free memory.'
      ''
      
        'The "EStackOverflow" (from the beginning of the article) was rai' +
        'sed because with'
      
        ' each call to DoStackOverflow a new segment of memory has been u' +
        'sed from the stack and '
      'stack has limitations. As simple as that.')
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
end
