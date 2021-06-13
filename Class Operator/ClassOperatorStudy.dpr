program ClassOperatorStudy;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmClassOperatorStudy},
  uClassOperator in 'uClassOperator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClassOperatorStudy, frmClassOperatorStudy);
  Application.Run;
end.
