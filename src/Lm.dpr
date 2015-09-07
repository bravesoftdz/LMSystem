program Lm;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Login in 'Login.pas' {FrmLogin},
  CustomGrid in 'FormPadrao\CustomGrid.pas' {FrmCustomGrid},
  CustomEditor in 'FormPadrao\CustomEditor.pas' {FrmCustomEditor},
  CadastroClientesGrid in 'Cadastros\CadastroClientesGrid.pas' {FrmCadastroClientesGrid},
  CadastroClientesEditor in 'Cadastros\CadastroClientesEditor.pas' {FrmCadastroClientesEditor},
  Carregamento in 'Utilitarios\Carregamento.pas' {FrmCarregamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCarregamento, FrmCarregamento);
  //Application.CreateForm(TFrmCustomGrid, FrmCustomGrid);
//Application.CreateForm(TFrmCustomEditor, FrmCustomEditor);
//Application.CreateForm(TFrmCadastroClientesGrid, FrmCadastroClientesGrid);
//Application.CreateForm(TFrmCadastroClientesEditor, FrmCadastroClientesEditor);
//Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
