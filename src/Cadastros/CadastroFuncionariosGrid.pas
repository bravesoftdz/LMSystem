unit CadastroFuncionariosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomGrid, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroFuncionariosGrid = class(TFrmCustomGrid)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFuncionariosGrid: TFrmCadastroFuncionariosGrid;

implementation

{$R *.dfm}

end.
