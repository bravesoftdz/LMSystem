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
    mmuPrincipal: TMainMenu;
    MnuCadastro: TMenuItem;
    MnuOperacional: TMenuItem;
    MnuFinanceiro: TMenuItem;
    MnuUtilitarios: TMenuItem;
    MnuFerramentas: TMenuItem;
    MnuAjuda: TMenuItem;
    procedure ItemDoMenuClick(Sender: TObject);
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FormulariosRegistrados: TList;
    procedure CriarMenus;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses Login, CadastroClientesGrid, Global;

{$R *.dfm}

type
  TMenuItemReg = class(TMenuItem)
  private
    FRegFormulario: TRegFormulario;
  public
    property RegFormulario: TRegFormulario read FRegFormulario write FRegFormulario;
  end;

procedure TfrmPrincipal.CriarMenus;
  procedure CriarMenusPorGrupo(Menu: TMenuItem; Grupo: String);
  var
    I: Integer;
    List: TStringList;
    Item: TMenuItemReg;
  begin
    List := TStringList.Create;
    try
      for I := 0 to lstFormularios.Count-1 do
      begin
        if lstFormularios[I].MenuGrupo = Grupo then
        begin
          //??? aqui falta avaliar se o usuario logado tem permissão
          List.AddObject(lstFormularios[I].MenuTitulo, lstFormularios[I]);
        end;
      end;
      List.Sort;
      Menu.Clear;
      for I := 0 to List.Count-1 do
      begin
        Item := TMenuItemReg.Create(Self);
        Item.OnClick := ItemDoMenuClick;
        Item.Caption := List[I];
        Item.RegFormulario := TRegFormulario(List.Objects[I]);
        Menu.Add(Item);
      end;
    finally
      List.Free;
    end;
  end;
begin
  CriarMenusPorGrupo(MnuCadastro, MENU_CADASTROS);
  CriarMenusPorGrupo(MnuOperacional, MENU_OPERACIONAL);
  CriarMenusPorGrupo(MnuFinanceiro, MENU_FINANCEIRO);
  CriarMenusPorGrupo(MnuUtilitarios, MENU_UTILITARIOS);
  CriarMenusPorGrupo(MnuFerramentas, MENU_FERRAMENTAS);
  CriarMenusPorGrupo(mnuAjuda, MENU_AJUDA);
end;


procedure TFrmPrincipal.ItemDoMenuClick(Sender: TObject);
var
  F: TForm;
  I: Integer;
  R: TRegFormulario;
begin
  R := TMenuItemReg(Sender).RegFormulario;
  for I := 0 to ComponentCount-1 do
  begin
    if Components[I].ClassName = R.Classe.ClassName then
    begin
      TForm(Components[I]).Free; // nao tem chance de ficar pendurado
    end;
  end;
  F := TMenuItemReg(Sender).RegFormulario.Classe.Create(Self);
  F.FormStyle := fsNormal;
  F.Show;
end;

procedure TFrmPrincipal.FDConnectionAfterConnect(Sender: TObject);
var F : TFrmLogin;
begin
  F := TFrmLogin.Create(Self);
  try
    F.ShowModal;
    if F.ModalResult = mrOk then
      CriarMenus
    else Application.Terminate;
  finally
    F.Free
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FDConnection.Connected := True;
end;

initialization
  RegistraFormulario(TFrmPrincipal, MENU_CADASTROS, 'teste');
end.
