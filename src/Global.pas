unit Global;

interface

uses System.SysUtils, System.Classes, Vcl.Forms, Generics.Collections;

type
  TRegFormulario = class;
  TListRegFormulario = TList<TRegFormulario>;
  TRegFormulario = class
  private
    FList: TListRegFormulario;
    FClasse: TFormClass;
    FMenuGrupo: String;
    FMenuTitulo: String;
  public
    property List: TListRegFormulario read FList write FList;
    property Classe: TFormClass read FClasse write FClasse;
    property MenuGrupo: String read FMenuGrupo write FMenuGrupo;
    property MenuTitulo: String read FMenuTitulo write FMenuTitulo;
    constructor Create(AList: TListRegFormulario; AClasse: TFormClass; AMenuGrupo: String; AMenuTitulo: String);
    destructor Destroy; override;
  end;


  procedure RegistraFormulario(Classe: TFormClass; MenuGrupo, MenuTitulo: String);

const
  MENU_CADASTROS = 'mnuCadastro';
  MENU_OPERACIONAL = 'MnuOperacional';
  MENU_FINANCEIRO = 'MnuFinanceiro';
  MENU_UTILITARIOS = 'MnuUtilitarios';
  MENU_FERRAMENTAS = 'MnuFerramentas';
  MENU_AJUDA = 'MnuAjuda';

var
  lstFormularios: TListRegFormulario = nil;
  USUARIO: String = '';
  LM_PATH_REG_CONEXOES: String = 'Software\LmSystem\Conexoes';
  LM_PATH_REG: String = 'Software\LmSystem';

implementation

procedure RegistraFormulario(Classe: TFormClass; MenuGrupo, MenuTitulo: String);
begin
  if lstFormularios = nil then
    lstFormularios := TListRegFormulario.Create;
  TRegFormulario.Create(lstFormularios, Classe, MenuGrupo, MenuTitulo);
end;

procedure LimpaRegistroFormularios;
var
  I: Integer;
begin
  for I := lstFormularios.Count-1 downto 0 do lstFormularios[I].Free;
end;

{ TRegFormulario }

constructor TRegFormulario.Create(AList: TListRegFormulario; AClasse: TFormClass; AMenuGrupo, AMenuTitulo: String);
begin
  List := AList;
  Classe := AClasse;
  FMenuGrupo := AMenuGrupo;
  MenuTitulo := AMenuTitulo;
  List.Add(Self)
end;

destructor TRegFormulario.Destroy;
begin
  lstFormularios.Remove(Self);
  inherited;
end;

initialization

finalization
  if lstFormularios <> nil then LimpaRegistroFormularios;

end.
