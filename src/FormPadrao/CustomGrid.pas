unit CustomGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,

  //uses do sistema
  CustomEditor;

type
  TFrmCustomGrid = class(TForm)
    PnlControl: TPanel;
    DBGrid1: TDBGrid;
    BtnIncluir: TSpeedButton;
    BtnAlterar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnImprimir: TSpeedButton;
    Panel2: TPanel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    FFormEditor: FrmCustomEditorClass;
  public
    { Public declarations }
    property FormEditor : FrmCustomEditorClass read  FFormEditor write FFormEditor;
  end;

var
  FrmCustomGrid: TFrmCustomGrid;

implementation

uses Principal, Global;

{$R *.dfm}

procedure TFrmCustomGrid.BtnAlterarClick(Sender: TObject);
var F : TFrmCustomEditor;
begin
  F := FormEditor.Create(Self);
  try
    F.FDQuery1.ParamByName('codigo').AsInteger := FDQuery1.FieldByName('codigo').AsInteger;
    F.FDQuery1.Open;
    F.FDQuery1.Edit;
    F.ShowModal;
  finally
    F.Free;
    FDQuery1.Refresh;
  end;
end;

procedure TFrmCustomGrid.BtnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir o item selecionado?','Confirma',36)=idyes then
    FDQuery1.Delete;
end;

procedure TFrmCustomGrid.BtnIncluirClick(Sender: TObject);
var F : TFrmCustomEditor;
begin
  F := FormEditor.Create(Self);
  try
    F.FDQuery1.Open;
    F.FDQuery1.Insert;
    F.FDQuery1.FieldByName('codigo').AsInteger := 0;
    F.ShowModal;
  finally
    F.Free;
    FDQuery1.Refresh;
  end;
end;

end.
