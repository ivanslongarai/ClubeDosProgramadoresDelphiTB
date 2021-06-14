program ARC;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uWeak in 'uWeak.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
