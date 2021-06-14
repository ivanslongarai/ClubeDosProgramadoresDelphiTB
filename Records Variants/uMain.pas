unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TShape = record
    Name: string;
    case IsSquare : Boolean of
      True:  (X1, Y1, X2, Y2: Integer);
      False: (X, Y: Integer);
  end;

  //X1 and X both are pointing to the same memory adress
  //Y1 and Y both are pointing to the same memory adress

  TfrmMain = class(TForm)
    btnTest: TButton;
    procedure btnTestClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnTestClick(Sender: TObject);
var
 A : TShape;

begin

  A.IsSquare := True;
  A.X1 := 10;
  ShowMessage(A.X.ToString);

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
