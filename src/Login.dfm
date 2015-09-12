object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 147
  ClientWidth = 227
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LbUsuario: TLabel
    Left = 24
    Top = 32
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object LbSenha: TLabel
    Left = 30
    Top = 66
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object SpeedButton1: TSpeedButton
    Left = 18
    Top = 106
    Width = 87
    Height = 31
    Caption = '&Ok'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 116
    Top = 106
    Width = 87
    Height = 31
    Caption = '&Cancelar'
    OnClick = SpeedButton2Click
  end
  object EdtSenha: TEdit
    Left = 69
    Top = 63
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 69
    Top = 28
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object FDQuery1: TFDQuery
    Connection = FrmPrincipal.FDConnection
    SQL.Strings = (
      'select * from usuarios '
      'where tem_usuario = 1'
      'order by usuario')
    Left = 272
    Top = 104
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '='
    Left = 272
    Top = 56
  end
  object Q2: TFDQuery
    Connection = FrmPrincipal.FDConnection
    Left = 272
    Top = 152
  end
end
