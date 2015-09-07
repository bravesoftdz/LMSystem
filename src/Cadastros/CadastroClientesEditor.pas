unit CadastroClientesEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomEditor, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCadastroClientesEditor = class(TFrmCustomEditor)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClientesEditor: TFrmCadastroClientesEditor;

implementation

{$R *.dfm}

end.
