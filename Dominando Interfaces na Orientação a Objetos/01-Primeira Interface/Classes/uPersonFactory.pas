unit uPersonFactory;

interface

uses uInterfaces, uTypes;

type
  TPersonFactory = class(TAbsPersonFactory)
  private
    class function GetIndividualPerson: IPerson;
    class function GetOrganizationPerson: IPerson;
  public
    class function GetPerson(AType : TPersonType) : IPerson; Override;
  end;

implementation

uses
  uPersonClasses;

{ TPersonFactory }

class function TPersonFactory.GetIndividualPerson: IPerson;
begin
  Result := TIndividualPerson.New;
end;

class function TPersonFactory.GetOrganizationPerson: IPerson;
begin
  Result := TCorporatePerson.New;
end;

class function TPersonFactory.GetPerson(AType: TPersonType): IPerson;
begin
  case AType of
    tpCorporate:
      Result := GetOrganizationPerson;
    tpIndividual:
      Result := GetIndividualPerson;
  end;
end;

end.
