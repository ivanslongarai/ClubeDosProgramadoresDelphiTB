object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 300
  Width = 392
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\temp\DB.gdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 192
    Top = 48
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 16
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 80
    Top = 120
  end
  object FDQuery: TFDQuery
    CachedUpdates = True
    Connection = FDConnection
    Left = 184
    Top = 136
  end
end
