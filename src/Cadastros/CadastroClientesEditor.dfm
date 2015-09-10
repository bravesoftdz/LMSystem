inherited FrmCadastroClientesEditor: TFrmCadastroClientesEditor
  Caption = 'FrmCadastroClientesEditor'
  ClientHeight = 403
  ClientWidth = 606
  ExplicitWidth = 622
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 35
    Top = 91
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 41
    Top = 126
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel [2]
    Left = 51
    Top = 159
    Width = 21
    Height = 13
    Caption = 'Cpf:'
  end
  object Label4: TLabel [3]
    Left = 35
    Top = 190
    Width = 37
    Height = 13
    Caption = 'Celular:'
  end
  object Label5: TLabel [4]
    Left = 44
    Top = 223
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object Label6: TLabel [5]
    Left = 23
    Top = 256
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label7: TLabel [6]
    Left = 40
    Top = 289
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label8: TLabel [7]
    Left = 35
    Top = 321
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label9: TLabel [8]
    Left = 266
    Top = 289
    Width = 23
    Height = 13
    Caption = 'Cep:'
  end
  object Label10: TLabel [9]
    Left = 398
    Top = 289
    Width = 69
    Height = 13
    Caption = 'Complemento:'
  end
  object Label11: TLabel [10]
    Left = 427
    Top = 256
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label12: TLabel [11]
    Left = 260
    Top = 190
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label13: TLabel [12]
    Left = 386
    Top = 159
    Width = 17
    Height = 13
    Caption = 'Rg:'
  end
  object SpeedButton1: TSpeedButton [13]
    Left = 40
    Top = 373
    Width = 23
    Height = 22
  end
  inherited Panel2: TPanel
    Width = 606
    TabOrder = 11
    ExplicitWidth = 615
    inherited PnlControl: TPanel
      Left = 356
      ExplicitLeft = 365
    end
  end
  object DBCodigo: TDBEdit [15]
    Left = 78
    Top = 88
    Width = 97
    Height = 21
    Cursor = crNo
    DataField = 'CODIGO'
    DataSource = DataSource1
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEmail: TDBEdit [16]
    Left = 80
    Top = 220
    Width = 513
    Height = 21
    DataField = 'EMAIL'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBComplemento: TDBEdit [17]
    Left = 472
    Top = 286
    Width = 121
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBNome: TDBEdit [18]
    Left = 80
    Top = 123
    Width = 513
    Height = 21
    DataField = 'RAZAO'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBRg: TDBEdit [19]
    Left = 408
    Top = 156
    Width = 185
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEndereco: TDBEdit [20]
    Left = 80
    Top = 253
    Width = 305
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBCidade: TDBEdit [21]
    Left = 80
    Top = 318
    Width = 73
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBBairro: TDBEdit [22]
    Left = 80
    Top = 286
    Width = 161
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBNumero: TDBEdit [23]
    Left = 472
    Top = 253
    Width = 121
    Height = 21
    DataField = 'NUMERO'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox [24]
    Left = 159
    Top = 318
    Width = 418
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataSource1
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = SourceCidades
    TabOrder = 10
  end
  object DateTimePicker1: TDateTimePicker [25]
    Left = 207
    Top = 88
    Width = 186
    Height = 21
    Date = 42255.888532592590000000
    Time = 42255.888532592590000000
    TabOrder = 0
  end
  object MaskEdit1: TMaskEdit [26]
    Left = 80
    Top = 156
    Width = 191
    Height = 21
    TabOrder = 2
    Text = ''
  end
  object MaskEdit2: TMaskEdit [27]
    Left = 80
    Top = 187
    Width = 133
    Height = 21
    TabOrder = 13
    Text = 'MaskEdit2'
  end
  object MaskEdit3: TMaskEdit [28]
    Left = 312
    Top = 187
    Width = 135
    Height = 21
    TabOrder = 14
    Text = 'MaskEdit3'
  end
  object MaskEdit4: TMaskEdit [29]
    Left = 294
    Top = 286
    Width = 97
    Height = 21
    TabOrder = 15
    Text = 'MaskEdit4'
  end
  inherited FDQuery1: TFDQuery
    BeforePost = FDQuery1BeforePost
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COD_CLIFOR'
    UpdateOptions.UpdateTableName = 'clifor'
    UpdateOptions.KeyFields = 'codigo'
    UpdateOptions.AutoIncFields = 'codigo'
    SQL.Strings = (
      'select * from clifor')
    Left = 520
  end
  inherited DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 576
  end
  object Q2: TFDQuery [33]
    Connection = FrmPrincipal.FDConnection
    Transaction = FDTransaction1
    Left = 704
    Top = 144
  end
  inherited FDUpdateSQL2: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO CLIFOR'
      '(CODIGO, RAZAO, CNPJ, DATA_NASCIMENTO, CELULAR, '
      '  TELEFONE, RG, EMAIL, ENDERECO, NUMERO, '
      '  COMPLEMENTO, BAIRRO, CEP, ESTADO, CIDADE)'
      
        'VALUES (:NEW_CODIGO, :NEW_RAZAO, :NEW_CNPJ, :NEW_DATA_NASCIMENTO' +
        ', :NEW_CELULAR, '
      
        '  :NEW_TELEFONE, :NEW_RG, :NEW_EMAIL, :NEW_ENDERECO, :NEW_NUMERO' +
        ', '
      
        '  :NEW_COMPLEMENTO, :NEW_BAIRRO, :NEW_CEP, :NEW_ESTADO, :NEW_CID' +
        'ADE)'
      'RETURNING CODIGO')
    ModifySQL.Strings = (
      'UPDATE CLIFOR'
      'SET CODIGO = :NEW_CODIGO, RAZAO = :NEW_RAZAO, CNPJ = :NEW_CNPJ, '
      
        '  DATA_NASCIMENTO = :NEW_DATA_NASCIMENTO, CELULAR = :NEW_CELULAR' +
        ', '
      '  TELEFONE = :NEW_TELEFONE, RG = :NEW_RG, EMAIL = :NEW_EMAIL, '
      
        '  ENDERECO = :NEW_ENDERECO, NUMERO = :NEW_NUMERO, COMPLEMENTO = ' +
        ':NEW_COMPLEMENTO, '
      '  BAIRRO = :NEW_BAIRRO, CEP = :NEW_CEP, ESTADO = :NEW_ESTADO, '
      '  CIDADE = :NEW_CIDADE'
      'WHERE CODIGO = :OLD_CODIGO'
      'RETURNING CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM CLIFOR'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CODIGO, RAZAO, CNPJ, DATA_NASCIMENTO, CELULAR, TELEFONE, ' +
        'RG, '
      '  EMAIL, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CEP, ESTADO, '
      '  CIDADE'
      'FROM CLIFOR'
      'WHERE CODIGO = :CODIGO')
    Left = 144
    Top = 352
  end
  object Cidades: TFDQuery
    Connection = FrmPrincipal.FDConnection
    SQL.Strings = (
      'Select codigo, nome from cidades'
      'order by nome')
    Left = 384
    Top = 352
  end
  object SourceCidades: TDataSource
    DataSet = Cidades
    Left = 440
    Top = 352
  end
end
