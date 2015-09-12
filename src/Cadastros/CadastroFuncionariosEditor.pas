unit CadastroFuncionariosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomEditor, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME;

type
  TFrmCadastroFuncionariosEditor = class(TFrmCustomEditor)
    DBCodigo: TDBEdit;
    DBUsuario: TDBEdit;
    DBSenha: TDBEdit;
    DBBairro: TDBEdit;
    DBNome: TDBEdit;
    DBPapelAcesso: TDBEdit;
    DBComplemento: TDBEdit;
    DBNumero: TDBEdit;
    DBEndereco: TDBEdit;
    DBEmail: TDBEdit;
    DBRg: TDBEdit;
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
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Cidades: TFDQuery;
    SourceCidades: TDataSource;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    Q2: TFDQuery;
    IdEncoderMIME1: TIdEncoderMIME;
    IdDecoderMIME1: TIdDecoderMIME;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FDQuery1BeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function SoNumeros(Const Texto:String):String;
  end;

var
  FrmCadastroFuncionariosEditor: TFrmCadastroFuncionariosEditor;

implementation

{$R *.dfm}

function TFrmCadastroFuncionariosEditor.SoNumeros(Const Texto:String):String;
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

procedure TFrmCadastroFuncionariosEditor.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not DBSenha.Enabled then
    DBSenha.Enabled := True
  else DBSenha.Enabled := False;
end;

procedure TFrmCadastroFuncionariosEditor.DBCheckBox1Click(Sender: TObject);
begin
  if not DBCheckBox1.Checked then begin
    DBUsuario.Visible := False;
    DBSenha.Visible := False;
    DBPapelAcesso.Visible := False;
    DBLookupComboBox2.Visible := False;
    Label2.Visible := False;
    Label9.Visible := False;
    Label10.Visible := False;
  end else begin
    DBUsuario.Visible := True;
    DBSenha.Visible := True;
    DBPapelAcesso.Visible := True;
    DBLookupComboBox2.Visible := True;
    Label2.Visible := True;
    Label9.Visible := True;
    Label10.Visible := True;
  end;
end;

procedure TFrmCadastroFuncionariosEditor.FDQuery1BeforePost(DataSet: TDataSet);
begin
  if DBCodigo.Text = '0' then
  begin
    Q2.SQL.Text := 'select gen_id(GEN_COD_USUARIOS,1) from rdb$database';
    Q2.Active := True;
    Q2.Open;
    FDQuery1.FieldByName('codigo').AsInteger := Q2.FieldByName('gen_id').AsInteger;
    Q2.Close;
  end;
  FDQuery1.FieldByName('cpf').AsString := SoNumeros(MaskEdit1.Text);
  FDQuery1.FieldByName('telefone').AsString := SoNumeros(MaskEdit2.Text);
  FDQuery1.FieldByName('celular').AsString := SoNumeros(MaskEdit3.Text);
  FDQuery1.FieldByName('senha').AsString := IdEncoderMIME1.Encode(DBSenha.Text);
  inherited;
end;

procedure TFrmCadastroFuncionariosEditor.FormCreate(Sender: TObject);
begin
  inherited;
  if not DBCheckBox1.Checked then begin
    DBUsuario.Visible := False;
    DBSenha.Visible := False;
    DBPapelAcesso.Visible := False;
    DBLookupComboBox2.Visible := False;
    Label2.Visible := False;
    Label9.Visible := False;
    Label10.Visible := False;
  end else begin
    DBUsuario.Visible := True;
    DBSenha.Visible := True;
    DBPapelAcesso.Visible := True;
    DBLookupComboBox2.Visible := True;
    Label2.Visible := True;
    Label9.Visible := True;
    Label10.Visible := True;
  end;
  Cidades.Open;
end;

procedure TFrmCadastroFuncionariosEditor.FormShow(Sender: TObject);
var Senha : String;
begin
  inherited;
  MaskEdit1.Text := FDQuery1.FieldByName('cpf').AsString;
  MaskEdit2.Text := FDQuery1.FieldByName('telefone').AsString;
  MaskEdit3.Text := FDQuery1.FieldByName('celular').AsString;
  Senha := FDQuery1.FieldByName('senha').AsString;
  DBSenha.Text := IdDecoderMIME1.DecodeString(Senha);
  MaskEdit1.EditMask := '000.000.000-00';
  MaskEdit2.EditMask := '(00) 0000-0000';
  MaskEdit3.EditMask := '(00) 0000-0000';
end;

end.
