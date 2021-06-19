unit uPessoa;

interface

type
  TPessoa = class
  public
    function TratarCpfCnpj(const AValue: string): string;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.TratarCpfCnpj(const AValue: string): string;
var
  I: Integer;

begin
  Result := '';
  for I := 1 to Length(AValue) do
    if CharInSet(AValue[I], ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
      Result := Result + AValue[I];
end;

end.
