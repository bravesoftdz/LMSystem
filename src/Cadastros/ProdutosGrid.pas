unit ProdutosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomGrid, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmProdutosGrid = class(TFrmCustomGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutosGrid: TFrmProdutosGrid;

implementation

uses ProdutosEditor, Global;

{$R *.dfm}

procedure TFrmProdutosGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TFrmProdutosEditor;
  inherited;
end;

initialization
  RegistraFormulario(TFrmProdutosGrid, MENU_CADASTROS, 'Produtos');

end.
