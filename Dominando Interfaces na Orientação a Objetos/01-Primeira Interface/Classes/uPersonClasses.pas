unit uPersonClasses;

interface

uses uInterfaces, uTypes;

type
  TPerson = class(TInterfacedObject, IPerson)
  private
    FName: string;
    FSurName: string;
    FDisplay: TEventDisplay;
  public
    function Name(Value: string): IPerson;
    function SurName(Value: string): IPerson;
    function FullName: IPerson; virtual; abstract;
    class function New: IPerson; virtual; abstract;
    function Display(Value: TEventDisplay): IPerson;
  end;

type
  TIndividualPerson = class(TPerson)
  public
    function FullName: IPerson; override;
    class function New: IPerson; override;
  end;

  TCorporatePerson = class(TPerson)
  public
    function FullName: IPerson; override;
    class function New: IPerson; override;
  end;

implementation

{ TPerson }

function TPerson.Display(Value: TEventDisplay): IPerson;
begin
  Result := Self;
  FDisplay := Value;
end;

function TPerson.Name(Value: string): IPerson;
begin
  Result := Self;
  FName := Value;
end;

function TPerson.SurName(Value: string): IPerson;
begin
  Result := Self;
  FSurName := Value;
end;

{ TIndividualPerson }

function TIndividualPerson.FullName: IPerson;
begin
  if Assigned(FDisplay) then
    FDisplay(FName + ' ' + FSurName);
end;

class function TIndividualPerson.New: IPerson;
begin
  Result := Self.Create;
end;

{ TCorporatePerson }

function TCorporatePerson.FullName: IPerson;
begin
  Result := Self;
  if Assigned(FDisplay) then
    FDisplay(FName + ' ' + FSurName + ' LTDA');
end;

class function TCorporatePerson.New: IPerson;
begin
  Result := Self.Create;
end;

end.
