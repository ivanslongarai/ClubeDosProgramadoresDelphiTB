unit DelphiToHero.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmMain = class(TForm)
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

initialization

ReportMemoryLeaksOnShutdown := True;

end.
