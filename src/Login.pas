unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXCtrls,

  Carregamento, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME;

type
  TFrmLogin = class(TForm)
    EdtSenha: TEdit;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ComboBox1: TComboBox;
    FDQuery1: TFDQuery;
    IdEncoderMIME1: TIdEncoderMIME;
    Q2: TFDQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ACarregar : TFrmCarregamento;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Principal;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACarregar.Free;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
var User : String;
begin
  ACarregar := TFrmCarregamento.Create(Self);
  FDQuery1.Active := True;
  ComboBox1.Items.Clear;
  while not FDQuery1.Eof do begin
    ComboBox1.Items.Add(FDQuery1.FieldByName('usuario').AsString);
    FDQuery1.Next;
  end;
end;

procedure TFrmLogin.SpeedButton1Click(Sender: TObject);
var Senha : String;
begin
 {Usuario: Admin
  Senha : LMSystem123}
  Senha := IdEncoderMIME1.Encode(EdtSenha.Text);
  Q2.SQL.Text := ' select tem_usuario from usuarios ' +
                 ' where tem_usuario in (1,3) ' +
                 ' and senha = :senha ' +
                 ' and usuario = :usuario ';
  Q2.ParamByName('senha').AsString := Senha;
  Q2.ParamByName('usuario').AsString := ComboBox1.Text;
  Q2.Open;
  if Q2.IsEmpty then begin
    ModalResult := mrNone;
    ShowMessage('Usuário ou senha incorretos!');
  end else begin
    ACarregar.Show;
    ModalResult := mrOk;
  end;
end;

procedure TFrmLogin.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
