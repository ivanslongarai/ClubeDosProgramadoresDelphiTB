program TreinamentoEspecialistaPOO;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uCarro in 'uCarro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
