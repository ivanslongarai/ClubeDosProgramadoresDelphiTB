program WorkingWithInterfaces;

uses
  Vcl.Forms,
  uMain in 'Views\uMain.pas' {frmMain},
  uPersonClasses in 'Classes\uPersonClasses.pas',
  uPersonFactory in 'Classes\uPersonFactory.pas',
  uInterfaces in 'Interfaces\uInterfaces.pas',
  uTypes in 'Shared\uTypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
