unit CadastroClientesEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomEditor, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TFrmCadastroClientesEditor = class(TFrmCustomEditor)
    DBCodigo: TDBEdit;
    DBEmail: TDBEdit;
    DBComplemento: TDBEdit;
    DBCnpj: TDBEdit;
    DBNome: TDBEdit;
    DBCelular: TDBEdit;
    DBRg: TDBEdit;
    DBEndereco: TDBEdit;
    DBCep: TDBEdit;
    DBTelefone: TDBEdit;
    DBCidade: TDBEdit;
    DBBairro: TDBEdit;
    DBNumero: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure FDQuery1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClientesEditor: TFrmCadastroClientesEditor;

implementation

{$R *.dfm}

procedure TFrmCadastroClientesEditor.FDQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
//  FDQuery1.FieldByName('codigo').AsInteger
end;

end.
