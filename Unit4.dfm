object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 192
  Top = 144
  Height = 150
  Width = 215
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Properties.Strings = (
      'select * from kategori'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2210010533_muhammad_ridho_syahputra_db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Visual 2\libmysql\libmysql.dll'
    Left = 32
    Top = 16
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 104
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 160
    Top = 32
  end
end
