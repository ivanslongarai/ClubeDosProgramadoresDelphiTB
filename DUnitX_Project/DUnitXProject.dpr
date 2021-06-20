program DUnitXProject;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uPessoa in 'uPessoa.pas',
  uPessoaDao in 'uPessoaDao.pas',
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
