unit uInterfaces;

interface
  uses uTypes;

type
  IPerson = interface
    ['{0F6447AF-AA62-4944-B558-C3957AFEBE6A}']
    function Name (Value : string) : IPerson;
    function SurName ( Value : string) : IPerson;
    function FullName : string;
  end;

  TAbsPersonFactory = class
    class function GetPerson(AType : TPersonType) : IPerson; virtual; abstract;
  end;

implementation

end.
