unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXCtrls,

  Carregamento;

type
  TFrmLogin = class(TForm)
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
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

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACarregar.Free;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  ACarregar := TFrmCarregamento.Create(Self);
end;

procedure TFrmLogin.SpeedButton1Click(Sender: TObject);

begin
  ACarregar.Show;

  ModalResult := mrOk;
end;

procedure TFrmLogin.SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
