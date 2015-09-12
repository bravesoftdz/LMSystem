unit LocaisEstoqueGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomGrid, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmLocaisEstoqueGrid = class(TFrmCustomGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocaisEstoqueGrid: TFrmLocaisEstoqueGrid;

implementation

uses LocaisEstoqueEditor, Global;

{$R *.dfm}

procedure TFrmLocaisEstoqueGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TFrmLocaisEstoqueEditor;
  inherited;
end;

Initialization
  RegistraFormulario(TFrmLocaisEstoqueGrid, MENU_OPERACIONAL, 'Locais de Estoque');

end.
