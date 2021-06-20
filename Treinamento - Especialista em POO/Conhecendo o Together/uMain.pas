unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TGarrafa = class
    Cor : string;
    Modelo : string;
    Tampa: string;
    procedure ArmazenarLiquido(ALiquido : string);
  end;

  TLivro = class
  public
    Nome: string;
    Autor: string;
    procedure Paginacao(AValue: string);
  end;

  TAutor = class
  public
    TLivro: TLivro;
  end;

  TGibi = class(TLivro)
  end;

type
  TfrmMain = class(TForm)
  public
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{ TGarrafa }

procedure TGarrafa.ArmazenarLiquido(ALiquido: string);
begin
end;

{ TLivro }

procedure TLivro.Paginacao(AValue: string);
begin
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
