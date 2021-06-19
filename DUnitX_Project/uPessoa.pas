unit uPessoa;

interface

type
  TPessoa = class
  private
    FNome: string;
    procedure SetNome(const Value: string);
  public
    function TratarCpfCnpj(const AValue: string): string;
    property Nome : string read FNome write SetNome;
    procedure ValidarCampos;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TPessoa.TratarCpfCnpj(const AValue: string): string;
var
  I: Integer;

begin
  Result := '';
  for I := 1 to Length(AValue) do
    if CharInSet(AValue[I], ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']) then
      Result := Result + AValue[I];
end;

procedure TPessoa.ValidarCampos;
begin
  if FNome = '' then
   raise Exception.Create('Nome não pode ser vazio');
end;

end.
