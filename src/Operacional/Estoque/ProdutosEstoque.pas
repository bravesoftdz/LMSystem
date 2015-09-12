unit ProdutosEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomInterfaceGrid, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmProdutosEstoque = class(TFrmCustomInterfaceGrid)
    BtnEntrada: TSpeedButton;
    BtnSaidas: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutosEstoque: TFrmProdutosEstoque;

implementation

{$R *.dfm}

uses Global;


Initialization
  RegistraFormulario(TFrmProdutosEstoque, MENU_OPERACIONAL, 'Produtos Estoque');

end.
