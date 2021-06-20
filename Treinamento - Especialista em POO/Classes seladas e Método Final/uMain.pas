unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmMain = class(TForm)
  private
  public
  end;

  TAnimal = class
  public
    function Voz: string; virtual; abstract;
  end;

  TCachorro = class(TAnimal)
  public
    function Voz: string; override;
  end;

  TGato = class(TAnimal)
    function Voz: string; override;
  end;

  TDinossauro = class (TAnimal)
    function Voz: string; override; final;
  end;

  TTiranossauro = class sealed (TDinossauro)
   // function Voz: string; override; // Não é possivel subscrever o método porque foi definido como Final na classe ancestral
  end;

  {
  TBabyTiranossauro = class(TTiranossauro) // Não é mais possível extender porque a classe TTiranossauro foi selada
  end;
  }

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
{ TDinossauro }

function TDinossauro.Voz: string;
begin

end;

{ TCachorro }

function TCachorro.Voz: string;
begin

end;

{ TGato }

function TGato.Voz: string;
begin

end;

{ TTiranossauro }

{
function TTiranossauro.Voz: string;
begin

end;
}

initialization

ReportMemoryLeaksOnShutdown := True;

end.
