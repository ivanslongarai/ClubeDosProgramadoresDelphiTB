unit uFormProperties;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RTTI;

type
  TfrmFormProperties = class(TForm)
    mmMethods: TMemo;
    mmProperties: TMemo;
    mmFields: TMemo;
    pnlBottom: TPanel;
    btnGetInfo: TButton;
    pnlTop: TPanel;
    pnlMethods: TPanel;
    pnlFields: TPanel;
    pnlProperties: TPanel;
    procedure btnGetInfoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
  public
  end;

var
  frmFormProperties: TfrmFormProperties;

implementation

{$R *.dfm}

procedure TfrmFormProperties.btnGetInfoClick(Sender: TObject);
var
  contextRtti: TRttiContext;
  typeRtti: TRttiType;
  methodRtti: TRttiMethod;
  fieldRtti: TRttiField;
  propertyRtti: TRttiProperty;
begin

  mmMethods.Clear;
  mmProperties.Clear;
  mmFields.Clear;

  contextRtti := TRttiContext.Create;

  try

    typeRtti := contextRtti.GetType(TfrmFormProperties);

    for methodRtti in typeRtti.GetMethods do
      mmMethods.Lines.Add(methodRtti.Name);

    for fieldRtti in typeRtti.GetFields do
      mmFields.Lines.Add(fieldRtti.Name);

    for propertyRtti in typeRtti.GetProperties do
      mmProperties.Lines.Add(propertyRtti.Name);

  finally

    contextRtti.Free;

  end;

end;

procedure TfrmFormProperties.FormResize(Sender: TObject);
begin
  mmMethods.Width := Trunc((Self.Width - Self.BorderWidth * 2) / 3);
  mmFields.Width := mmMethods.Width;
  pnlMethods.Width := mmMethods.Width;
  pnlFields.Width := mmMethods.Width;
end;

end.
