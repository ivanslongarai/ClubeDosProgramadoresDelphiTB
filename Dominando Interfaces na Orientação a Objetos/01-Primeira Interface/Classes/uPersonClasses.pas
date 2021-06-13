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

  TCorporatePerson = class(TInterfacedObject, IPerson)
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

{ TCorporatePerson }

constructor TCorporatePerson.Create;
begin

end;

destructor TCorporatePerson.Destroy;
begin

  inherited;
end;

function TCorporatePerson.FullName: string;
begin
  Result := FName + ' ' + FSurName + ' LTDA' ;
end;

function TCorporatePerson.Name(Value: string): IPerson;
begin
  Result := Self;
  FName := Value;
end;

class function TCorporatePerson.New: IPerson;
begin
  Result := Self.Create;
end;

function TCorporatePerson.SurName(Value: string): IPerson;
begin
  Result := Self;
  FSurName := Value;
end;

end.
