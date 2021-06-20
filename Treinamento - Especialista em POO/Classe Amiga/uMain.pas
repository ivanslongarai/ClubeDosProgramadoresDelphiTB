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

uses uClassesAmigas;

procedure TfrmMain.FormCreate(Sender: TObject);
var
 oClasseConsumidora : TClasseAmigaQueConsome;

begin
  oClasseConsumidora := TClasseAmigaQueConsome.Create;
  FreeAndNil(oClasseConsumidora);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
