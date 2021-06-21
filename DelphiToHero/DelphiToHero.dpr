program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.View.Main in 'src\view\DelphiToHero.View.Main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
