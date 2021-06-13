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

{$R *.dfm}

uses uClasses, uInterfaces;

procedure TfrmMain.btnProcessClick(Sender: TObject);
begin
  mmFullName.Lines.Add(
    TPessoa.New.Name(edtName.Text)
    .SurName(edtSurName.Text)
    .FullName);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
