unit Carregamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls;

type
  TFrmCarregamento = class(TForm)
    ActivityIndicator1: TActivityIndicator;
    LbMensagem: TLabel;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Count : Integer;
  public
    { Public declarations }
    AMensagem : String;
  end;

var
  FrmCarregamento: TFrmCarregamento;

implementation

{$R *.dfm}

procedure TFrmCarregamento.FormShow(Sender: TObject);
begin
  Count := 1;
  if AMensagem = '' then
    AMensagem := 'Processando';

  LbMensagem.Caption := AMensagem;
  Timer.Enabled := True;

end;

procedure TFrmCarregamento.TimerTimer(Sender: TObject);
begin
  if Count <= 3 then
    LbMensagem.Caption := LbMensagem.Caption + '.'
  else begin
    LbMensagem.Caption := AMensagem;
    Count := 0;
  end;
  Inc(Count);
end;

end.
