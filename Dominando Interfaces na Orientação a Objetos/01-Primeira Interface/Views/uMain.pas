unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uTypes;

type
  TfrmMain = class(TForm)
    btnProcess: TButton;
    edtSurName: TEdit;
    edtName: TEdit;
    lbName: TLabel;
    lbSurname: TLabel;
    mmFullName: TMemo;
    cbPersonType: TComboBox;
    lbPersonType: TLabel;
    cbClearList: TCheckBox;
    procedure btnProcessClick(Sender: TObject);
  private
    procedure ClearMemo;
    function GetPersonType: TPersonType;
    procedure AddResult(AValue : string);
  public
  end;

var
  frmMain: TfrmMain;

implementation
uses
  uPersonFactory;

{$R *.dfm}


procedure TfrmMain.AddResult(AValue: string);
begin
  mmFullName.Lines.Add(AValue);
end;

procedure TfrmMain.btnProcessClick(Sender: TObject);
begin
  ClearMemo;
  TPersonFactory.GetPerson(GetPersonType)
    .Name(edtName.Text)
    .SurName(edtSurName.Text)
    .Display(AddResult)
    .FullName;
end;

procedure TfrmMain.ClearMemo;
begin
  if cbClearList.Checked then
    mmFullName.Lines.Clear;
end;

function TfrmMain.GetPersonType: TPersonType;
begin
  case cbPersonType.ItemIndex of
    0 : Result := tpIndividual;
    else Result := tpCorporate;
  end;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
