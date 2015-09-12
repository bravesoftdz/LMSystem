unit LocaisEstoqueEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomEditor, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmLocaisEstoqueEditor = class(TFrmCustomEditor)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocaisEstoqueEditor: TFrmLocaisEstoqueEditor;

implementation

{$R *.dfm}

end.
