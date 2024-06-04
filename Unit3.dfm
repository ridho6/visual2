object Form3: TForm3
  Left = 401
  Top = 165
  Width = 949
  Height = 491
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 56
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object lbl1: TLabel
    Left = 128
    Top = 280
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object e1: TEdit
    Left = 168
    Top = 56
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 168
    Top = 88
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 88
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 344
    Top = 88
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object edt2: TEdit
    Left = 224
    Top = 272
    Width = 177
    Height = 21
    TabOrder = 4
  end
  object btn4: TButton
    Left = 408
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object dbgrd1: TDBGrid
    Left = 112
    Top = 136
    Width = 409
    Height = 120
    DataSource = DataModule4.dskategori
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
