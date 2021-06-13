unit uPersonClasses;

interface

uses uInterfaces;

type
  TIndividualPerson = class(TInterfacedObject, IPerson)
  private
    FName: string;
    FSurName: string;
    function Name(Value: string): IPerson;
    function SurName(Value: string): IPerson;
    function FullName: string;
  public
    Constructor Create;
    destructor Destroy; override;
    class function New: IPerson;
  end;

  TCorporationPerson = class(TInterfacedObject, IPerson)
  private
    FName: string;
    FSurName: string;
    function Name(Value: string): IPerson;
    function SurName(Value: string): IPerson;
    function FullName: string;
  public
    Constructor Create;
    destructor Destroy; override;
    class function New: IPerson;
  end;

implementation

{ TIndividualPerson }

constructor TIndividualPerson.Create;
begin

end;

destructor TIndividualPerson.Destroy;
begin

  inherited;
end;

function TIndividualPerson.FullName: string;
begin
  Result := FName + ' ' + FSurName;
end;

function TIndividualPerson.Name(Value: string): IPerson;
begin
  Result := Self;
  FName := Value;
end;

class function TIndividualPerson.New: IPerson;
begin
  Result := Self.Create;
end;

function TIndividualPerson.SurName(Value: string): IPerson;
begin
  Result := Self;
  FSurName := Value;
end;

{ TCorporationPerson }

constructor TCorporationPerson.Create;
begin

end;

destructor TCorporationPerson.Destroy;
begin

  inherited;
end;

function TCorporationPerson.FullName: string;
begin
  Result := FName + ' ' + FSurName + ' LTDA' ;
end;

function TCorporationPerson.Name(Value: string): IPerson;
begin
  Result := Self;
  FName := Value;
end;

class function TCorporationPerson.New: IPerson;
begin
  Result := Self.Create;
end;

function TCorporationPerson.SurName(Value: string): IPerson;
begin
  Result := Self;
  FSurName := Value;
end;

end.
