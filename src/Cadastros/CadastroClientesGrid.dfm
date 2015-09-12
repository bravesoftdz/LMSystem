inherited FrmCadastroClientesGrid: TFrmCadastroClientesGrid
  Caption = 'Cadastro de Clientes e Fornecedores'
  ClientHeight = 411
  ClientWidth = 886
  OnCreate = FormCreate
  ExplicitWidth = 902
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Width = 886
    Height = 354
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
  end
  inherited Panel2: TPanel
    Width = 886
    ExplicitWidth = 956
    inherited PnlControl: TPanel
      Left = 394
      ExplicitLeft = 464
    end
  end
  inherited FDQuery1: TFDQuery
    SQL.Strings = (
      'select codigo, '
      '       razao, '
      '       cnpj, '
      '       data_nascimento, '
      '       telefone, '
      '       celular, '
      '       rg, '
      '       email, '
      '       endereco, '
      '       numero, '
      '       complemento, '
      '       bairro, '
      '       cep, '
      '       estado, '
      '       cidade, '
      '       cpf '
      'from clifor'
      'order by codigo')
  end
end
