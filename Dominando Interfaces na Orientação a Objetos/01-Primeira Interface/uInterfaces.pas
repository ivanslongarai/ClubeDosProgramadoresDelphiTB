unit uInterfaces;

interface

type
  iPessoa = interface
    ['{0F6447AF-AA62-4944-B558-C3957AFEBE6A}']
    function Name (Value : string) : iPessoa;
    function SurName ( Value : string) : iPessoa;
    function FullName : string;
  end;

implementation

end.
