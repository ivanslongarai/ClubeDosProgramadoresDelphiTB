unit uInterfaces;

interface

type
  IPerson = interface
    ['{0F6447AF-AA62-4944-B558-C3957AFEBE6A}']
    function Name (Value : string) : IPerson;
    function SurName ( Value : string) : IPerson;
    function FullName : string;
  end;

implementation

end.
