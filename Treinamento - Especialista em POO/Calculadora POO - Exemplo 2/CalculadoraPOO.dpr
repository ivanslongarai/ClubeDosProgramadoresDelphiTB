program CalculadoraPOO;

uses
  Vcl.Forms,
  uInterfacesCalculadora in 'Interfaces\uInterfacesCalculadora.pas',
  uHelpers in 'Helpers\uHelpers.pas',
  UDividir in 'Classes de Operacoes\UDividir.pas',
  uMultiplicar in 'Classes de Operacoes\uMultiplicar.pas',
  uOperacoes in 'Classes de Operacoes\uOperacoes.pas',
  uSomar in 'Classes de Operacoes\uSomar.pas',
  uSubtrair in 'Classes de Operacoes\uSubtrair.pas',
  uCalculadoraView in 'Views\uCalculadoraView.pas' {frmCalculadora},
  uCalculadora.Classe in 'Classes\uCalculadora.Classe.pas',
  Calculadora.Eventos in 'Eventos\Calculadora.Eventos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadora, frmCalculadora);
  Application.Run;

end.
