inherited FrmCadastroClientesGrid: TFrmCadastroClientesGrid
  Caption = 'FrmCadastroClientesGrid'
  ClientHeight = 470
  ClientWidth = 956
  OnCreate = FormCreate
  ExplicitWidth = 972
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Width = 956
    Height = 413
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
  end
  inherited Panel2: TPanel
    Width = 956
    inherited PnlControl: TPanel
      Left = 464
    end
  end
  inherited FDQuery1: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from clifor')
  end
end
