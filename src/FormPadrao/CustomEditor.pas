unit CustomEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmCustomEditor = class(TForm)
    PnlControl: TPanel;
    BtnOk: TSpeedButton;
    BtnCalcel: TSpeedButton;
    Panel2: TPanel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDTransaction1: TFDTransaction;
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCalcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
  FrmCustomEditorClass = class of TFrmCustomEditor;
//FrmCustomEditor: TFrmCustomEditor;

implementation

uses Principal;

{$R *.dfm}

procedure TFrmCustomEditor.BtnCalcelClick(Sender: TObject);
begin
  FDQuery1.Cancel;
  Close;
end;

procedure TFrmCustomEditor.BtnOkClick(Sender: TObject);
begin
  FDQuery1.Post;
end;

end.
