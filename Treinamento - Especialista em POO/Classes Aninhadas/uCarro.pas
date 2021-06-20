unit uCarro;

interface

type
  TCarro = class
    type
      TRoda = class
      private
      public
        Tipo: string;
        Material: string;
        Tamanho: string;
    end;
  private
    FRoda : TRoda;
  public
    Marca: string;
    Modelo: string;
    property Roda: TRoda read FRoda write FRoda;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

uses
  System.SysUtils;

{ TCarro }

constructor TCarro.Create;
begin
  FRoda := TRoda.Create;
end;

destructor TCarro.Destroy;
begin
  FreeAndNil(FRoda);
  inherited;
end;

end.
