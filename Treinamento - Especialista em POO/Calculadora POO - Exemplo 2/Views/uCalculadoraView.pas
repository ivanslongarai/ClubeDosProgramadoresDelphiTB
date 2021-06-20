unit uCalculadoraView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  uInterfacesCalculadora, uHelpers;

type
  TfrmCalculadora = class(TForm)
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtValor1: TEdit;
    lbNumber1: TLabel;
    lbResultado: TLabel;
    edtResultado: TEdit;
    btnLimpar: TButton;
    Label1: TLabel;
    edtValor2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtValor1KeyPress(Sender: TObject; var Key: Char);
  private
    FCalculadora: ICalculadora;
    procedure ExibeResultado(AValue: string);
  public
  end;

var
  frmCalculadora: TfrmCalculadora;

implementation

{$R *.dfm}

uses uCalculadora.Classe;

procedure TfrmCalculadora.btnDividirClick(Sender: TObject);
begin
  FCalculadora
    .Add(edtValor1.Text.ToDoubleHelper)
    .Add(edtValor2.Text.ToDoubleHelper)
    .Dividir.Executar;
end;

procedure TfrmCalculadora.btnLimparClick(Sender: TObject);
begin
  edtValor1.Text := '';
  edtValor2.Text := '';
  edtResultado.Text := '0';
  edtValor1.SetFocus;
end;

procedure TfrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  FCalculadora
    .Add(edtValor1.Text.ToDoubleHelper)
    .Add(edtValor2.Text.ToDoubleHelper)
    .Multiplicar
    .Executar;
end;

procedure TfrmCalculadora.btnSomarClick(Sender: TObject);
begin
  FCalculadora
   .Add(edtValor1.Text.ToDoubleHelper)
   .Add(edtValor2.Text.ToDoubleHelper)
   .Somar
   .Executar;
end;

procedure TfrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  FCalculadora
    .Add(edtValor1.Text.ToDoubleHelper)
    .Add(edtValor2.Text.ToDoubleHelper)
    .Subtrair
    .Executar;
end;

procedure TfrmCalculadora.edtValor1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(CharInSet(Key, ['0' .. '9', ',', #8, #27, #32])) then
  begin
    Key := #0;
  end;
end;

procedure TfrmCalculadora.ExibeResultado(AValue: string);
begin
  edtResultado.Text := AValue;
end;

procedure TfrmCalculadora.FormCreate(Sender: TObject);
begin
  FCalculadora := TCalculadora.New.Display.Resultado(ExibeResultado).EndDisplay;
end;

procedure TfrmCalculadora.FormShow(Sender: TObject);
begin
  btnLimpar.Click;
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
