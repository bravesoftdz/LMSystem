inherited FrmCadastroFuncionariosEditor: TFrmCadastroFuncionariosEditor
  Caption = 'Cadastro de Funcionarios'
  ClientHeight = 481
  OnCreate = FormCreate
  ExplicitWidth = 674
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 89
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel [1]
    Left = 21
    Top = 116
    Width = 40
    Height = 13
    Caption = 'Usuario:'
  end
  object Label3: TLabel [2]
    Left = 30
    Top = 143
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label4: TLabel [3]
    Left = 40
    Top = 171
    Width = 21
    Height = 13
    Caption = 'Cpf:'
  end
  object Label5: TLabel [4]
    Left = 17
    Top = 198
    Width = 44
    Height = 13
    Caption = 'telefone:'
  end
  object Label6: TLabel [5]
    Left = 33
    Top = 226
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object Label7: TLabel [6]
    Left = 12
    Top = 261
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label8: TLabel [7]
    Left = 29
    Top = 288
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label9: TLabel [8]
    Left = 196
    Top = 116
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label10: TLabel [9]
    Left = 389
    Top = 116
    Width = 48
    Height = 13
    Caption = 'P.Acesso:'
  end
  object Label11: TLabel [10]
    Left = 322
    Top = 171
    Width = 17
    Height = 13
    Caption = 'Rg:'
  end
  object Label12: TLabel [11]
    Left = 304
    Top = 198
    Width = 37
    Height = 13
    Caption = 'Celular:'
  end
  object Label13: TLabel [12]
    Left = 491
    Top = 261
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label14: TLabel [13]
    Left = 383
    Top = 288
    Width = 69
    Height = 13
    Caption = 'Complemento:'
  end
  object Label15: TLabel [14]
    Left = 24
    Top = 315
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object SpeedButton1: TSpeedButton [15]
    Left = 356
    Top = 112
    Width = 23
    Height = 22
    Hint = 'Alterar Senha'
    OnClick = SpeedButton1Click
  end
  object DBCodigo: TDBEdit [17]
    Left = 64
    Top = 86
    Width = 65
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
  end
  object DBUsuario: TDBEdit [18]
    Left = 64
    Top = 113
    Width = 121
    Height = 21
    DataField = 'USUARIO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBSenha: TDBEdit [19]
    Left = 232
    Top = 113
    Width = 121
    Height = 21
    DataField = 'SENHA'
    DataSource = DataSource1
    Enabled = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object DBBairro: TDBEdit [20]
    Left = 64
    Top = 285
    Width = 273
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBNome: TDBEdit [21]
    Left = 64
    Top = 140
    Width = 553
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBPapelAcesso: TDBEdit [22]
    Left = 440
    Top = 113
    Width = 41
    Height = 21
    DataField = 'PAPEL_DE_ACESSO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBComplemento: TDBEdit [23]
    Left = 456
    Top = 285
    Width = 161
    Height = 21
    DataField = 'COMPLEMENTO'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBNumero: TDBEdit [24]
    Left = 535
    Top = 258
    Width = 82
    Height = 21
    DataField = 'NUMERO'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEndereco: TDBEdit [25]
    Left = 64
    Top = 258
    Width = 401
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEmail: TDBEdit [26]
    Left = 64
    Top = 223
    Width = 305
    Height = 21
    DataField = 'EMAIL'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBRg: TDBEdit [27]
    Left = 344
    Top = 168
    Width = 161
    Height = 21
    DataField = 'RG'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit1: TDBEdit [28]
    Left = 64
    Top = 312
    Width = 65
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataSource1
    TabOrder = 15
  end
  object DBCheckBox1: TDBCheckBox [29]
    Left = 144
    Top = 87
    Width = 177
    Height = 17
    Hint = 'Se for desmarcado o '#250'suario tamb'#233'm sera desativado!'
    Caption = 'Este Funcionario Possui Usu'#225'rio.'
    DataField = 'TEM_USUARIO'
    DataSource = DataSource1
    TabOrder = 16
    ValueChecked = '1'
    ValueUnchecked = '0'
    OnClick = DBCheckBox1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox [30]
    Left = 135
    Top = 312
    Width = 370
    Height = 21
    DataField = 'CIDADE'
    DataSource = DataSource1
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = SourceCidades
    TabOrder = 17
  end
  object DBLookupComboBox2: TDBLookupComboBox [31]
    Left = 487
    Top = 113
    Width = 130
    Height = 21
    TabOrder = 18
  end
  object MaskEdit1: TMaskEdit [32]
    Left = 64
    Top = 167
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'MaskEdit1'
  end
  object MaskEdit2: TMaskEdit [33]
    Left = 64
    Top = 194
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'MaskEdit2'
  end
  object MaskEdit3: TMaskEdit [34]
    Left = 344
    Top = 195
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'MaskEdit3'
  end
  inherited FDQuery1: TFDQuery
    BeforePost = FDQuery1BeforePost
    SQL.Strings = (
      'select * from usuarios '
      'where codigo = :codigo')
    Left = 552
    Top = 64
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited DataSource1: TDataSource
    DataSet = FDQuery1
    Top = 64
  end
  inherited FDTransaction1: TFDTransaction
    Left = 440
    Top = 64
  end
  object Cidades: TFDQuery
    Connection = FrmPrincipal.FDConnection
    SQL.Strings = (
      'select codigo, nome from cidades'
      'order by nome')
    Left = 552
    Top = 360
  end
  object SourceCidades: TDataSource
    DataSet = Cidades
    Left = 600
    Top = 360
  end
  object Q2: TFDQuery
    Connection = FrmPrincipal.FDConnection
    Left = 560
    Top = 176
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 504
    Top = 360
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 408
    Top = 360
  end
end
