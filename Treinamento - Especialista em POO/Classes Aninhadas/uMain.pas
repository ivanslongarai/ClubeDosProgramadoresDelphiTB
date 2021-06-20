unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmMain = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uCarro;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  oCarro: TCarro;
  // oRoda : TRoda;  // Classe aninhada, especifica do carro e encapsulada dentro de carro

begin

  oCarro := TCarro.Create;
  oCarro.Roda.Tipo := 'Liga Leve';
  oCarro.Roda.Material := 'Alumínio e Silício';
  oCarro.Roda.Tamanho := '17';
  ShowMessage(oCarro.Roda.Tipo + ' | ' + oCarro.Roda.Material + ' | ' + oCarro.Roda.Tamanho);
  FreeAndNil(oCarro);

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
