inherited FrmLocaisEstoqueEditor: TFrmLocaisEstoqueEditor
  Caption = 'FrmLocaisEstoqueEditor'
  ExplicitWidth = 674
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from locais_estoque where codigo=:codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
