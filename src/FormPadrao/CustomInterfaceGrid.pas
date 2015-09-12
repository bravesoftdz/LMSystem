unit CustomInterfaceGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Principal, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCustomInterfaceGrid = class(TForm)
    Panel2: TPanel;
    PnlControl: TPanel;
    BtnPesquisar: TSpeedButton;
    BtnImprimir: TSpeedButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCustomInterfaceGrid: TFrmCustomInterfaceGrid;

implementation

{$R *.dfm}

procedure TFrmCustomInterfaceGrid.FormCreate(Sender: TObject);
begin
  FDQuery1.Open();
end;

end.
