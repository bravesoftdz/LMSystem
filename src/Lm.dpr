program Lm;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Login in 'Login.pas' {FrmLogin},
  CustomGrid in 'FormPadrao\CustomGrid.pas' {FrmCustomGrid},
  CustomEditor in 'FormPadrao\CustomEditor.pas' {FrmCustomEditor},
  CadastroClientesGrid in 'Cadastros\CadastroClientesGrid.pas' {FrmCadastroClientesGrid},
  CadastroClientesEditor in 'Cadastros\CadastroClientesEditor.pas' {FrmCadastroClientesEditor},
  Carregamento in 'Utilitarios\Carregamento.pas' {FrmCarregamento},
  CadastroFuncionariosGrid in 'Cadastros\CadastroFuncionariosGrid.pas' {FrmCadastroFuncionariosGrid},
  CadastroFuncionariosEditor in 'Cadastros\CadastroFuncionariosEditor.pas' {FrmCadastroFuncionariosEditor},
  Global in 'Global.pas',
  ProdutosGrid in 'Cadastros\ProdutosGrid.pas' {FrmProdutosGrid},
  ProdutosEditor in 'Cadastros\ProdutosEditor.pas' {FrmProdutosEditor},
  CustomInterfaceGrid in 'FormPadrao\CustomInterfaceGrid.pas' {FrmCustomInterfaceGrid},
  LocaisEstoqueGrid in 'Operacional\Estoque\LocaisEstoqueGrid.pas' {FrmLocaisEstoqueGrid},
  LocaisEstoqueEditor in 'Operacional\Estoque\LocaisEstoqueEditor.pas' {FrmLocaisEstoqueEditor},
  ProdutosEstoque in 'Operacional\Estoque\ProdutosEstoque.pas' {FrmProdutosEstoque};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmProdutosGrid, FrmProdutosGrid);
  Application.CreateForm(TFrmProdutosEditor, FrmProdutosEditor);
//  Application.CreateForm(TFrmCustomInterfaceGrid, FrmCustomInterfaceGrid);
  Application.CreateForm(TFrmLocaisEstoqueGrid, FrmLocaisEstoqueGrid);
//  Application.CreateForm(TFrmLocaisEstoqueEditor, FrmLocaisEstoqueEditor);
  Application.CreateForm(TFrmProdutosEstoque, FrmProdutosEstoque);
  //  Application.CreateForm(TFrmCarregamento, FrmCarregamento);
//  Application.CreateForm(TFrmCadastroFuncionariosGrid, FrmCadastroFuncionariosGrid);
//  Application.CreateForm(TFrmCadastroFuncionariosEditor, FrmCadastroFuncionariosEditor);
//  Application.CreateForm(TFrmCustomGrid, FrmCustomGrid);
//Application.CreateForm(TFrmCustomEditor, FrmCustomEditor);
  Application.CreateForm(TFrmCadastroClientesGrid, FrmCadastroClientesGrid);
//Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
