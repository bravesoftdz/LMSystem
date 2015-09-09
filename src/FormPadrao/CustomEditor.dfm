object FrmCustomEditor: TFrmCustomEditor
  Left = 0
  Top = 0
  Caption = 'FrmCustomEditor'
  ClientHeight = 565
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 65
    Align = alTop
    TabOrder = 0
    object PnlControl: TPanel
      Left = 408
      Top = 1
      Width = 249
      Height = 63
      Align = alRight
      TabOrder = 0
      object BtnOk: TSpeedButton
        Left = 8
        Top = 8
        Width = 113
        Height = 49
        Caption = '&Ok'
        OnClick = BtnOkClick
      end
      object BtnCalcel: TSpeedButton
        Left = 127
        Top = 8
        Width = 113
        Height = 49
        Caption = '&Cancelar'
        OnClick = BtnCalcelClick
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = FrmPrincipal.FDConnection
    Transaction = FDTransaction1
    Left = 560
    Top = 72
  end
  object DataSource1: TDataSource
    Left = 624
    Top = 72
  end
  object FDTransaction1: TFDTransaction
    Connection = FrmPrincipal.FDConnection
    Left = 448
    Top = 72
  end
end
