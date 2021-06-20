unit uClassesAmigas;

interface


// Exige cuidado por poder violar encapsulamentos indesejavelmente, que pode ser evitado usando strict private

type

  TClasseAmiga = class
  strict private
   {$HINTS OFF}  // evitando hint de campo não utilizado
    propriedadeRealmentePrivadaEntreClassesAmigas : string;
   {$HINTS ON}
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
  //oClasseAmiga.propriedadeRealmentePrivadaEntreClassesAmigas := 'Campo privado não acessível';  Usado Strict Private Section
  ShowMessage(oClasseAmiga.propriedadePrivada);
  FreeAndNil(oClasseAmiga);
end;

end.
