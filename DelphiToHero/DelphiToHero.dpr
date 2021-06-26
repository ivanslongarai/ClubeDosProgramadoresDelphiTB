program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.View.Main in 'src\view\DelphiToHero.View.Main.pas' {frmMain},
  DelphiToHero.View.Styles.Colors in 'src\view\styles\DelphiToHero.View.Styles.Colors.pas',
  DelphiToHero.View.Pages.Principal in 'src\view\pages\DelphiToHero.View.Pages.Principal.pas' {frmPagePrincipal},
  DelphiToHero.View.Routers in 'src\view\routers\DelphiToHero.View.Routers.pas',
  DelphiToHero.View.Pages.Form.Template in 'src\view\pages\DelphiToHero.View.Pages.Form.Template.pas' {frmTemplate},
  DelphiToHero.View.Pages.Usuarios in 'src\view\pages\DelphiToHero.View.Pages.Usuarios.pas' {frmPageUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
