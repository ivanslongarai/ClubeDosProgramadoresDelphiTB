unit eNota.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    btnTestar: TButton;
    rgOpcoes: TRadioGroup;
    procedure btnTestarClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

uses
  eNota.Controller.NotaFiscal;

{$R *.dfm}

procedure TfrmMain.btnTestarClick(Sender: TObject);
begin
  case rgOpcoes.ItemIndex of
    0: TControllerNotaFiscal.New.EnviarNotaSefaz;
    1: TControllerNotaFiscal.New.EnviarNotaSefazSemEmail;
    2: TControllerNotaFiscal.New.GerarNotaPedido(21);
  end;
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
