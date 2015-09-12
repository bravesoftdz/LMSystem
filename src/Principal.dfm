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
  Menu = mmuPrincipal
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
  object mmuPrincipal: TMainMenu
    Left = 24
    Top = 8
    object MnuCadastro: TMenuItem
      Caption = 'Cadastros'
    end
    object MnuOperacional: TMenuItem
      Caption = 'Operacional'
    end
    object MnuFinanceiro: TMenuItem
      Caption = 'Finceiro'
    end
    object MnuUtilitarios: TMenuItem
      Caption = 'Utilit'#225'rios'
    end
    object MnuFerramentas: TMenuItem
      Caption = 'Ferramentas'
    end
    object MnuAjuda: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
