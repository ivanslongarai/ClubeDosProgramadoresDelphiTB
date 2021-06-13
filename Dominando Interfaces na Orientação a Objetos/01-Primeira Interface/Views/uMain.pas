unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnProcess: TButton;
    edtSurName: TEdit;
    edtName: TEdit;
    lbName: TLabel;
    lbSurname: TLabel;
    mmFullName: TMemo;
    procedure btnProcessClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation
uses
  uPersonFactory;

{$R *.dfm}


procedure TfrmMain.btnProcessClick(Sender: TObject);
begin

  mmFullName.Lines.Clear;

  mmFullName.Lines.Add(
    TPersonFactory.GetIndividualPerson
      .Name(edtName.Text)
      .SurName(edtSurName.Text)
      .FullName
      );

  mmFullName.Lines.Add(
    TPersonFactory.GetOrganizationPerson
      .Name(edtName.Text)
      .SurName(edtSurName.Text)
      .FullName
      );

end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
