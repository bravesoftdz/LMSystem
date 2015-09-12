inherited FrmCadastroFuncionariosGrid: TFrmCadastroFuncionariosGrid
  Caption = 'FrmCadastroFuncionariosGrid'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select codigo,'
      '       usuario,'
      '       nome,'
      '       telefone,'
      '       celular,'
      '       endereco'
      'from usuarios'
      'where tem_usuario <> 3'
      'order by codigo')
  end
end
