object FrmPrincipal: TFrmPrincipal
  Left = 680
  Top = 249
  Caption = 'FrmPrincipal'
  ClientHeight = 583
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 564
    Width = 887
    Height = 19
    Panels = <>
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=lm'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Protocol=TCPIP'
      'Port=3055'
      'DriverID=fB')
    LoginPrompt = False
    AfterConnect = FDConnectionAfterConnect
    Left = 24
    Top = 176
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Cadastros'
      object ClientesFornecedores1: TMenuItem
        Caption = 'Clientes Fornecedores'
        OnClick = ClientesFornecedores1Click
      end
    end
    object Operacional1: TMenuItem
      Caption = 'Operacional'
    end
    object Finceiro1: TMenuItem
      Caption = 'Finceiro'
    end
    object Utilitarios1: TMenuItem
      Caption = 'Utilit'#225'rios'
    end
    object Configuraes1: TMenuItem
      Caption = 'Ferramentas'
    end
  end
end
