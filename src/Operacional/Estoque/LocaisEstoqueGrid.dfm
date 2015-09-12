inherited FrmLocaisEstoqueGrid: TFrmLocaisEstoqueGrid
  Caption = 'FrmLocaisEstoqueGrid'
  OnCreate = FormCreate
  ExplicitWidth = 1003
  ExplicitHeight = 718
  PixelsPerInch = 96
  TextHeight = 13
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from locais_estoque')
  end
end
