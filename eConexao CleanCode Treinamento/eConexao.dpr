program eConexao;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  eConexao.Model.Conexao.Firedac in 'eConexao.Model.Conexao.Firedac.pas',
  eConexao.Model.Query.Firedac in 'eConexao.Model.Query.Firedac.pas',
  eConexao.Model.Interfaces in 'eConexao.Model.Interfaces.pas',
  eConexao.Model.Entidade.A in 'eConexao.Model.Entidade.A.pas',
  eEntidadeA.Controller.Factory.Query in 'eEntidadeA.Controller.Factory.Query.pas',
  eEntidadeA.Controller.Factory.Interfaces in 'eEntidadeA.Controller.Factory.Interfaces.pas',
  uDataModule in 'uDataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
