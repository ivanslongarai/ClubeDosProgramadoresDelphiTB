unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, eConexao.Model.Interfaces;

type
  TfrmMain = class(TForm)
    dsTeste: TDataSource;
    gridTeste: TDBGrid;
    pnlTop: TPanel;
    btnTestar: TButton;
    DBNavigator: TDBNavigator;
    rbListAll: TRadioButton;
    rbListFields: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTestarClick(Sender: TObject);
    procedure rbListAllClick(Sender: TObject);
  private
    FEntidadeA: IEntidade;
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  eConexao.Model.Entidade.A;

{$R *.dfm}

procedure TfrmMain.btnTestarClick(Sender: TObject);
begin
  if rbListAll.Checked then
    FEntidadeA.Listar(dsTeste);
  if rbListFields.Checked then
    FEntidadeA.ListarCampos(dsTeste, 'A, B');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FEntidadeA := TEntidadeA.New;
end;

procedure TfrmMain.rbListAllClick(Sender: TObject);
begin
  btnTestar.Click;
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
