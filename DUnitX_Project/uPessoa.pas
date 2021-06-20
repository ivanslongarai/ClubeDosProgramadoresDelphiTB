unit uPessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private
    FNome: string;
    FSobreNome: string;
    FDataNascimento: TDateTime;
    FCpfCnpj: string;
    FIdade: Integer;
    FId: Integer;
    procedure SetNome(const Value: string);
    procedure SetCpfCnpj(const Value: string);
    procedure SetDataNascimento(const Value: TDateTime);
    procedure SetIdade(const Value: Integer);
    procedure SetSobreNome(const Value: string);
    procedure SetId(const Value: Integer);
  public
    property Id : Integer read FId write SetId;
    property Nome : string read FNome write SetNome;
    property SobreNome : string read FSobreNome write SetSobreNome;
    property Idade : Integer read FIdade write SetIdade;
    property DataNascimento : TDateTime read FDataNascimento write SetDataNascimento;
    property CpfCnpj : string read FCpfCnpj write SetCpfCnpj;
    procedure ValidarCampos;
    function TratarCpfCnpj(const AValue: string): string;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetCpfCnpj(const Value: string);
begin
  FCpfCnpj := Value;
end;

procedure TPessoa.SetDataNascimento(const Value: TDateTime);
begin
  FDataNascimento := Value;
end;

procedure TPessoa.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TPessoa.SetSobreNome(const Value: string);
begin
  FSobreNome := Value;
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
