unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmCalculadora = class(TForm)
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtNumber1: TEdit;
    lbNumber1: TLabel;
    lbNumber2: TLabel;
    gbResultado: TGroupBox;
    lbResultado: TLabel;
    edtMaskEditNumber2: TMaskEdit;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  private
  public
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

uses uCalculadora.Classe, uHelpers;

procedure TfrmCalculadora.btnDividirClick(Sender: TObject);
begin
  lbResultado.Caption := TCalculadora.New.Dividir(edtNumber1.Text.ToDoubleHelper (* <<-- using TCaptionHelper *) ,
    edtMaskEditNumber2.Text.ToDoubleHelper (* <<-- using TMaskedTextHelper *) ).ToString;
end;

procedure TfrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  lbResultado.Caption := TCalculadora.New.Multiplicar(edtNumber1.Text (* <<-- using overload string *) ,
    edtMaskEditNumber2.Text (* <<-- using overload string *) ).ToString;
end;

procedure TfrmCalculadora.btnSomarClick(Sender: TObject);
begin
  lbResultado.Caption := TCalculadora.New.Somar(edtNumber1 (* <<-- using overload TCustomEdit *) ,
    edtMaskEditNumber2 (* <<-- using overload TCustomEdit *) ).ToString;
end;

procedure TfrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  lbResultado.Caption := TCalculadora.New.Subtrair(edtNumber1.Text.ToDoubleHelper,
    edtMaskEditNumber2.Text.ToDoubleHelper).ToString;
end;

end.
