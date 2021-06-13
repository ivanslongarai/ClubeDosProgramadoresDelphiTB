unit uPersonFactory;

interface
  uses uInterfaces;

type
  TPersonFactory = class(TAbsPersonFactory)
  public
    class function GetIndividualPerson: IPerson; override;
    class function GetOrganizationPerson: IPerson; override;
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
  Result := TCorporationPerson.New;
end;

end.
