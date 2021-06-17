program eNotaCleanCodeTreinamento;

uses
  Vcl.Forms,
  eNota.View.Main in 'view\eNota.View.Main.pas' {frmMain},
  eNota.Controller.NotaFiscal in 'controller\eNota.Controller.NotaFiscal.pas',
  eNota.Controller.NotaFiscal.Interfaces in 'controller\eNota.Controller.NotaFiscal.Interfaces.pas',
  eNota.Controller.NotaFiscal.Criar in 'controller\eNota.Controller.NotaFiscal.Criar.pas',
  eNota.Controller.NotaFiscal.Validar in 'controller\eNota.Controller.NotaFiscal.Validar.pas',
  eNota.Controller.NotaFiscal.Enviar in 'controller\eNota.Controller.NotaFiscal.Enviar.pas',
  eNota.Controller.NotaFiscal.Gravar in 'controller\eNota.Controller.NotaFiscal.Gravar.pas',
  eNota.Controller.NotaFiscal.EnviarEmail in 'controller\eNota.Controller.NotaFiscal.EnviarEmail.pas',
  eNota.Controller.Invoker in 'controller\eNota.Controller.Invoker.pas',
  eNota.Controller.NotaFiscal.ImportarPedido in 'controller\eNota.Controller.NotaFiscal.ImportarPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
