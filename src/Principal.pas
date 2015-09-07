unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    FDConnection: TFDConnection;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Operacional1: TMenuItem;
    Finceiro1: TMenuItem;
    Utilitarios1: TMenuItem;
    Configuraes1: TMenuItem;
    ClientesFornecedores1: TMenuItem;
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientesFornecedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses Login, CadastroClientesGrid;

{$R *.dfm}

procedure TFrmPrincipal.ClientesFornecedores1Click(Sender: TObject);
var F : TFrmCadastroClientesGrid;
begin
  F := TFrmCadastroClientesGrid.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TFrmPrincipal.FDConnectionAfterConnect(Sender: TObject);
var F : TFrmLogin;
begin
  F := TFrmLogin.Create(Self);
  try
    F.ShowModal;
    if F.ModalResult = mrOk then
      Visible := True
    else Application.Terminate;
  finally
    F.Free
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FDConnection.Connected := True;
end;

end.
