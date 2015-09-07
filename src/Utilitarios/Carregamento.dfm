object FrmCarregamento: TFrmCarregamento
  Left = 881
  Top = 468
  BorderStyle = bsNone
  Caption = 'FrmCarregamento'
  ClientHeight = 141
  ClientWidth = 154
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  DesignSize = (
    154
    141)
  PixelsPerInch = 96
  TextHeight = 13
  object LbMensagem: TLabel
    Left = 33
    Top = 105
    Width = 4
    Height = 16
    Alignment = taCenter
    Anchors = [akLeft, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ActivityIndicator1: TActivityIndicator
    Left = 47
    Top = 14
    Cursor = crHourGlass
    Anchors = []
    Animate = True
    FrameDelay = 40
    IndicatorSize = aisXLarge
    ExplicitLeft = 39
    ExplicitTop = 8
  end
  object Timer: TTimer
    Enabled = False
    Interval = 900
    OnTimer = TimerTimer
    Left = 8
    Top = 16
  end
end
