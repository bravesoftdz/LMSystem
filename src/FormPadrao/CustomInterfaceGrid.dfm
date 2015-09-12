object FrmCustomInterfaceGrid: TFrmCustomInterfaceGrid
  Left = 0
  Top = 0
  Caption = 'FrmCustomInterfaceGrid'
  ClientHeight = 421
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 57
    Align = alTop
    TabOrder = 0
    object PnlControl: TPanel
      Left = 246
      Top = 1
      Width = 491
      Height = 55
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BtnPesquisar: TSpeedButton
        Left = 247
        Top = 8
        Width = 115
        Height = 41
        Caption = '&Pesquisar'
      end
      object BtnImprimir: TSpeedButton
        Left = 366
        Top = 8
        Width = 115
        Height = 41
        Caption = '&Imprimir'
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 738
    Height = 364
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQuery1: TFDQuery
    Connection = FrmPrincipal.FDConnection
    Left = 216
    Top = 8
  end
  object DataSource1: TDataSource
    Left = 280
    Top = 8
  end
end
