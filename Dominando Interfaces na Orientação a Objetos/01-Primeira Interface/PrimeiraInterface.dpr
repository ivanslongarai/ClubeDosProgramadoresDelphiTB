program PrimeiraInterface;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uInterfaces in 'uInterfaces.pas',
  uClasses in 'uClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
