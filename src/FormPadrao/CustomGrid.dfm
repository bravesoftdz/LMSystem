object FrmCustomGrid: TFrmCustomGrid
  Left = 0
  Top = 0
  Caption = 'FrmCustomGrid'
  ClientHeight = 679
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 987
    Height = 622
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 57
    Align = alTop
    TabOrder = 1
    object PnlControl: TPanel
      Left = 495
      Top = 1
      Width = 491
      Height = 55
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BtnIncluir: TSpeedButton
        Left = 11
        Top = 8
        Width = 114
        Height = 41
        Caption = '&Adicionar'
        OnClick = BtnIncluirClick
      end
      object BtnAlterar: TSpeedButton
        Left = 129
        Top = 8
        Width = 113
        Height = 41
        Caption = '&Editar'
        OnClick = BtnAlterarClick
      end
      object BtnExcluir: TSpeedButton
        Left = 247
        Top = 8
        Width = 115
        Height = 41
        Caption = 'E&xcluir'
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
  object FDQuery1: TFDQuery
    Connection = FrmPrincipal.FDConnection
    Left = 352
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 416
    Top = 16
  end
end
