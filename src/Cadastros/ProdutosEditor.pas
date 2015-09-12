unit ProdutosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomEditor, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmProdutosEditor = class(TFrmCustomEditor)
    EdtCodigo: TDBEdit;
    LbCodigo: TLabel;
    Label1: TLabel;
    EdtDescricao: TDBEdit;
    EdtUnMedida: TDBEdit;
    LbUnMedida: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutosEditor: TFrmProdutosEditor;

implementation

{$R *.dfm}

end.
