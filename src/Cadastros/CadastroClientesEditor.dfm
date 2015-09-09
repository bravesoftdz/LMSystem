inherited FrmCadastroClientesEditor: TFrmCadastroClientesEditor
  Caption = 'FrmCadastroClientesEditor'
  ClientHeight = 378
  ClientWidth = 615
  ExplicitWidth = 631
  ExplicitHeight = 413
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
  inherited Panel2: TPanel
    Width = 615
    inherited PnlControl: TPanel
      Left = 365
    end
  end
  object DBCodigo: TDBEdit [14]
    Left = 80
    Top = 88
    Width = 97
    Height = 21
    Cursor = crNo
    DataField = 'CODIGO'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEmail: TDBEdit [15]
    Left = 80
    Top = 220
    Width = 513
    Height = 21
    DataField = 'EMAIL'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBComplemento: TDBEdit [16]
    Left = 472
    Top = 286
    Width = 121
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBCnpj: TDBEdit [17]
    Left = 80
    Top = 156
    Width = 193
    Height = 21
    DataField = 'CNPJ'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNome: TDBEdit [18]
    Left = 80
    Top = 123
    Width = 513
    Height = 21
    DataField = 'RAZAO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBCelular: TDBEdit [19]
    Left = 80
    Top = 187
    Width = 121
    Height = 21
    DataField = 'CELULAR'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBRg: TDBEdit [20]
    Left = 408
    Top = 156
    Width = 185
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEndereco: TDBEdit [21]
    Left = 80
    Top = 253
    Width = 305
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBCep: TDBEdit [22]
    Left = 296
    Top = 286
    Width = 97
    Height = 21
    DataField = 'CEP'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBTelefone: TDBEdit [23]
    Left = 312
    Top = 187
    Width = 121
    Height = 21
    DataField = 'TELEFONE'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBCidade: TDBEdit [24]
    Left = 80
    Top = 318
    Width = 73
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBBairro: TDBEdit [25]
    Left = 80
    Top = 286
    Width = 161
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBNumero: TDBEdit [26]
    Left = 472
    Top = 253
    Width = 121
    Height = 21
    DataField = 'NUMERO'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBLookupComboBox1: TDBLookupComboBox [27]
    Left = 159
    Top = 318
    Width = 418
    Height = 21
    TabOrder = 14
  end
  object DateTimePicker1: TDateTimePicker [28]
    Left = 207
    Top = 88
    Width = 186
    Height = 21
    Date = 42255.888532592590000000
    Time = 42255.888532592590000000
    TabOrder = 15
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
end
