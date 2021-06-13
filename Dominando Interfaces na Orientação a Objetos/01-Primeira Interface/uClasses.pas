unit uClasses;

interface

uses uInterfaces;

type
  TPessoa = class(TInterfacedObject, IPessoa)
  private
    FName: string;
    FSurName: string;
    function Name(Value: string): IPessoa;
    function SurName(Value: string): IPessoa;
    function FullName: string;
  public
    Constructor Create;
    destructor Destroy; override;
    class function New : iPessoa;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.FullName: string;
begin
  Result := FName + ' ' + FSurName;
end;

function TPessoa.Name(Value: string): IPessoa;
begin
  Result := Self;
  FName := Value;
end;

class function TPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.SurName(Value: string): IPessoa;
begin
  Result := Self;
  FSurName := Value;
end;

end.
