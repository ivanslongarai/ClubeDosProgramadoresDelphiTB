program TreinamentoEspecialistaPOO;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uClassesAmigas in 'uClassesAmigas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
