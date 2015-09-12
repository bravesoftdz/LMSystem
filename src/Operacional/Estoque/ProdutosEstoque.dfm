inherited FrmProdutosEstoque: TFrmProdutosEstoque
  Caption = 'FrmProdutosEstoque'
  ClientHeight = 449
  ClientWidth = 748
  Position = poDefault
  ExplicitWidth = 764
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 748
    ExplicitWidth = 748
    inherited PnlControl: TPanel
      Left = 256
      ExplicitLeft = 256
      object BtnEntrada: TSpeedButton
        Left = 9
        Top = 8
        Width = 115
        Height = 41
        Caption = '&Entradas'
      end
      object BtnSaidas: TSpeedButton
        Left = 128
        Top = 8
        Width = 115
        Height = 41
        Caption = '&Saidas'
      end
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 748
    Height = 392
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from produtos_estoque')
    Left = 64
    Top = 0
  end
  inherited DataSource1: TDataSource
    Left = 128
    Top = 0
  end
end
