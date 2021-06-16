program StudyingRTTI;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uFormProperties in 'uFormProperties.pas' {frmFormProperties};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
