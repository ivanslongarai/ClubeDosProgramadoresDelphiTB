program TreinamentoEspecialistaPOO;

uses
  Vcl.Forms,
  uCalculadora in 'uCalculadora.pas' {frmCalculadora},
  uCalculadora.Classe in 'uCalculadora.Classe.pas',
  uOperacoes in 'uOperacoes.pas',
  uInterfacesCalculadora in 'uInterfacesCalculadora.pas',
  uHelpers in 'uHelpers.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;

end.
