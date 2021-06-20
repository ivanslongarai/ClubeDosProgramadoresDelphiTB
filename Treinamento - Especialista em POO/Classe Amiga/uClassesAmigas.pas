unit uClassesAmigas;

interface


// Exige cuidado por poder violar encapsulamentos indesejavelmente

type

  TClasseAmiga = class
  private
    propriedadePrivada: string;
  end;

  TClasseAmigaQueConsome = class
  public
    constructor Create;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TClasseAmigaQueConsome }

constructor TClasseAmigaQueConsome.Create;
var
  oClasseAmiga: TClasseAmiga;
begin
  oClasseAmiga := TClasseAmiga.Create;
  oClasseAmiga.propriedadePrivada := 'Setando valor em campo privado de uma classe amiga por estar na mesma unit';
  ShowMessage(oClasseAmiga.propriedadePrivada);
  FreeAndNil(oClasseAmiga);
end;

end.
