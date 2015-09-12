inherited FrmProdutosEditor: TFrmProdutosEditor
  Caption = 'FrmProdutosEditor'
  ExplicitWidth = 674
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  object LbCodigo: TLabel [0]
    Left = 21
    Top = 26
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 115
    Width = 50
    Height = 13
    Caption = 'Descric'#227'o:'
  end
  object LbUnMedida: TLabel [2]
    Left = 527
    Top = 115
    Width = 58
    Height = 13
    Caption = 'Un. Medida:'
  end
  object EdtCodigo: TDBEdit [4]
    Left = 64
    Top = 23
    Width = 81
    Height = 21
    DataField = 'codigo'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object EdtDescricao: TDBEdit [5]
    Left = 64
    Top = 112
    Width = 441
    Height = 21
    DataField = 'descricao'
    DataSource = DataSource1
    TabOrder = 2
  end
  object EdtUnMedida: TDBEdit [6]
    Left = 591
    Top = 112
    Width = 47
    Height = 21
    TabOrder = 3
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from Produtos where codigo=:codigo')
    Left = 264
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited DataSource1: TDataSource
    Left = 328
    Top = 8
  end
  inherited FDTransaction1: TFDTransaction
    Left = 192
    Top = 8
  end
end
