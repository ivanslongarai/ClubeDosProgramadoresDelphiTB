unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnAbsoluteEdit: TButton;
    edtAbsolute: TEdit;
    mmAbsolute: TMemo;
    btnAbsoluteMemo: TButton;
    btnNormalEdit: TButton;
    btnNormalMemo: TButton;
    procedure btnAbsoluteEditClick(Sender: TObject);
    procedure btnAbsoluteMemoClick(Sender: TObject);
    procedure btnNormalEditClick(Sender: TObject);
    procedure btnNormalMemoClick(Sender: TObject);
  private
    procedure UpperAbsolute(Sender: TObject);
    procedure NormalLowerCase(Sender: TObject);
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnAbsoluteEditClick(Sender: TObject);
begin
  UpperAbsolute(edtAbsolute);
end;

procedure TfrmMain.btnAbsoluteMemoClick(Sender: TObject);
begin
  UpperAbsolute(mmAbsolute);
end;

procedure TfrmMain.btnNormalEditClick(Sender: TObject);
begin
 NormalLowerCase(edtAbsolute);
end;

procedure TfrmMain.btnNormalMemoClick(Sender: TObject);
begin
 NormalLowerCase(mmAbsolute);
end;

procedure TfrmMain.NormalLowerCase(Sender: TObject);
begin

  if Sender is TEdit then
    TEdit(Sender).Text := AnsiLowerCase(TEdit(Sender).Text);

  if Sender is TMemo then
    TMemo(Sender).Text := AnsiLowerCase(TMemo(Sender).Text);

end;

procedure TfrmMain.UpperAbsolute(Sender: TObject);
var
  Edit: TEdit absolute Sender;
  Memo: TMemo absolute Sender;

begin

  if Sender is TEdit then
    Edit.Text := AnsiUpperCase(Edit.Text);

  if Sender is TMemo then
    Memo.Text := AnsiUpperCase(Memo.Text)

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
