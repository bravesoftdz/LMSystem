unit CadastroClientesEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomEditor, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroClientesEditor = class(TFrmCustomEditor)
    DBCodigo: TDBEdit;
    DBEmail: TDBEdit;
    DBComplemento: TDBEdit;
    DBNome: TDBEdit;
    DBRg: TDBEdit;
    DBEndereco: TDBEdit;
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
    Q2: TFDQuery;
    Cidades: TFDQuery;
    SourceCidades: TDataSource;
    MaskEdit1: TMaskEdit;
    SpeedButton1: TSpeedButton;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label14: TLabel;
    MaskEdit5: TMaskEdit;
    procedure FDQuery1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function SoNumeros(Const Texto:String):String;
  public
    { Public declarations }
  end;

var
  FrmCadastroClientesEditor: TFrmCadastroClientesEditor;

implementation

{$R *.dfm}

function TFrmCadastroClientesEditor.SoNumeros(Const Texto:String):String;
var
   vContString: integer;
   vString: string;
begin
   vString:='';
   for vContString:= 1 To Length(Texto) Do
     begin
       if (Texto[vContString] in ['0'..'9']) then
         begin
           vString:= vString + Copy(Texto, vContString, 1);
         end;
     end;

   if vString<>'' then
     result:=vString
   else
     result:='   ';
end;

procedure TFrmCadastroClientesEditor.FDQuery1BeforePost(DataSet: TDataSet);
begin
  if DBCodigo.Text = '0' then
  begin
    Q2.SQL.Text := 'select gen_id(gen_cod_clifor,1) from rdb$database';
    Q2.Active := True;
    Q2.Open;
    FDQuery1.FieldByName('codigo').AsInteger := Q2.FieldByName('gen_id').AsInteger;
    Q2.Close;
  end;
  FDQuery1.FieldByName('cpf').AsString := SoNumeros(MaskEdit1.Text);
  FDQuery1.FieldByName('cnpj').AsString := SoNumeros(MaskEdit5.Text);
  FDQuery1.FieldByName('telefone').AsString := SoNumeros(MaskEdit3.Text);
  FDQuery1.FieldByName('celular').AsString := SoNumeros(MaskEdit2.Text);
  FDQuery1.FieldByName('cep').AsString := SoNumeros(MaskEdit4.Text);
  FDQuery1.FieldByName('data_nascimento').AsDateTime := DateTimePicker1.Date;
  inherited;
end;

procedure TFrmCadastroClientesEditor.FormShow(Sender: TObject);
begin
  inherited;
  Cidades.Open;
  MaskEdit1.Text := FDQuery1.FieldByName('cpf').AsString;
  MaskEdit5.Text := FDQuery1.FieldByName('cnpj').AsString;
  MaskEdit2.Text := FDQuery1.FieldByName('celular').AsString;
  MaskEdit3.Text := FDQuery1.FieldByName('telefone').AsString;
  MaskEdit4.Text := FDQuery1.FieldByName('cep').AsString;
  MaskEdit1.EditMask := '000.000.000-00';
  MaskEdit2.EditMask := '(00) 0000-0000';
  MaskEdit3.EditMask := '(00) 0000-0000';
  MaskEdit4.EditMask := '00000-000';
  MaskEdit5.EditMask := '000.000.000/0000-00';
  if FDQuery1.FieldByName('Data_Nascimento').AsString <> '' then
    DateTimePicker1.Date := FDQuery1.FieldByName('Data_Nascimento').AsDateTime
  else if FDQuery1.FieldByName('Data_Nascimento').AsString = '' then
    DateTimePicker1.Date := Date;

end;

end.
