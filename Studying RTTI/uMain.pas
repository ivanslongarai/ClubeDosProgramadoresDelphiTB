unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    miStudies: TMenuItem;
    miGettingstartedWithRTTI: TMenuItem;
    procedure miGettingstartedWithRTTIClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uFormProperties;

procedure TfrmMain.miGettingstartedWithRTTIClick(Sender: TObject);
var
 frmFormProperties: TfrmFormProperties;
begin

  frmFormProperties := TfrmFormProperties.Create(nil);
  try
   frmFormProperties.ShowModal;
  finally
    FreeAndNil(frmFormProperties);
  end;

end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
