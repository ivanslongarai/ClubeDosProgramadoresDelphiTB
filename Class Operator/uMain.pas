unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmClassOperatorStudy = class(TForm)
    btnAddOperator: TButton;
    btnImplicit: TButton;
    btnPositive: TButton;
    btnNegative: TButton;
    btnInc: TButton;
    btnDec: TButton;
    btnEquals: TButton;
    procedure btnAddOperatorClick(Sender: TObject);
    procedure btnImplicitClick(Sender: TObject);
    procedure btnPositiveClick(Sender: TObject);
    procedure btnNegativeClick(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure btnDecClick(Sender: TObject);
    procedure btnEqualsClick(Sender: TObject);
  private
    procedure IIFMessage(Exp : Boolean; ResultA, ResultB: string);
  public
  end;

var
  frmClassOperatorStudy: TfrmClassOperatorStudy;

implementation

{$R *.dfm}

uses uClassOperator;

procedure TfrmClassOperatorStudy.btnAddOperatorClick(Sender: TObject);
var
  A, B, C : TClassOperatorClass;

begin
  A.Value := 10;
  B.Value := 20;
  C := A + B;
  ShowMessage(C.Value.ToString);
end;

procedure TfrmClassOperatorStudy.btnPositiveClick(Sender: TObject);
var
 A : TClassOperatorClass;

begin
  A.Value := 10;
  A := +A;
  ShowMessage(A.Value.ToString);
end;

procedure TfrmClassOperatorStudy.IIFMessage(Exp : Boolean; ResultA, ResultB: string);
begin
  if Exp then
    ShowMessage(ResultA)
  else
    ShowMessage(ResultB);
end;

procedure TfrmClassOperatorStudy.btnDecClick(Sender: TObject);
var
 A : TClassOperatorClass;

begin
  A.Value := 15;
  Dec(A);
  ShowMessage(A.Value.ToString);
end;

procedure TfrmClassOperatorStudy.btnEqualsClick(Sender: TObject);
var
  A, B : TClassOperatorClass;

begin
  A.Value := 10;
  A.Name := 'Ivan';
  B.Value := 20;
  B.Name := 'Maria';
  IIFMessage(A = B, 'Igual', 'Diferente');

  A.Value := 20;
  A.Name := 'Ivan';
  B.Value := 20;
  B.Name := 'Ivan';
  IIFMessage(A = B, 'Igual', 'Diferente');
end;

procedure TfrmClassOperatorStudy.btnImplicitClick(Sender: TObject);
var
 A : TClassOperatorClass;

begin

  A := 'Ivan';
  ShowMessage(A.Name);

  A := 30;
  ShowMessage(A.Value.ToString);

end;

procedure TfrmClassOperatorStudy.btnIncClick(Sender: TObject);
var
 A : TClassOperatorClass;

begin
  A.Value := 10;
  Inc(A);
  ShowMessage(A.Value.ToString);
end;

procedure TfrmClassOperatorStudy.btnNegativeClick(Sender: TObject);
var
 A : TClassOperatorClass;

begin
  A.Value := 10;
  A := -A;
  ShowMessage(A.Value.ToString);
end;

end.
