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
    function Display(Value: TEventDisplay): IPerson;
    function FullName: IPerson; virtual; abstract;
    function DocumentId(Value: string): IPerson; overload; virtual; abstract;
    function DocumentId: IPerson; overload; virtual; abstract;
    class function New: IPerson; virtual; abstract;
  end;

type
  TIndividualPerson = class(TPerson)
  private
    FDocumentId: string;
  public
    function FullName: IPerson; override;
    class function New: IPerson; override;
    function DocumentId(Value: string): IPerson; overload; override;
    function DocumentId: IPerson; overload; override;
  end;

  TCorporatePerson = class(TPerson)
  private
    FDocumentId: string;
  public
    function FullName: IPerson; override;
    class function New: IPerson; override;
    function DocumentId(Value: string): IPerson; overload; override;
    function DocumentId: IPerson; overload; override;
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

function TIndividualPerson.DocumentId(Value: string): IPerson;
begin
  Result := Self;
  FDocumentId := Value;
end;

function TIndividualPerson.DocumentId: IPerson;
begin
  Result := Self;
  if Assigned(FDisplay) then
    FDisplay(FDocumentId);
end;

function TIndividualPerson.FullName: IPerson;
begin
  Result := Self;
  if Assigned(FDisplay) then
    FDisplay(FName + ' ' + FSurName);
end;

class function TIndividualPerson.New: IPerson;
begin
  Result := Self.Create;
end;

{ TCorporatePerson }

function TCorporatePerson.DocumentId(Value: string): IPerson;
begin
  Result := Self;
  FDocumentId := Value;
end;

function TCorporatePerson.DocumentId: IPerson;
begin
  Result := Self;
  if Assigned(FDisplay) then
    FDisplay(FDocumentId);
end;

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
