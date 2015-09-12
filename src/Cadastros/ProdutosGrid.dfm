inherited FrmProdutosGrid: TFrmProdutosGrid
  Caption = 'FrmProdutosGrid'
  OnCreate = FormCreate
  ExplicitWidth = 1003
  ExplicitHeight = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from produtos')
  end
end
