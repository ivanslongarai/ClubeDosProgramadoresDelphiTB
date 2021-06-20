unit uOperacoes;

interface

uses uInterfacesCalculadora;

type

  TOperacao = class(TInterfacedObject, ICalculadoraOperacao)
    function Operacao(Num1, Num2: double): double; virtual; abstract;
    class function New: ICalculadoraOperacao;
  end;

  TSoma = class(TOperacao)
    function Operacao(Num1, Num2: double): double; override;
  end;

  TSubtracao = class(TOperacao)
    function Operacao(Num1, Num2: double): double; override;
  end;

  TDivisao = class(TOperacao)
    function Operacao(Num1, Num2: double): double; override;
  end;

  TMultiplicacao = class(TOperacao)
    function Operacao(Num1, Num2: double): double; override;
  end;

implementation

uses
  System.SysUtils;

{ TMultiplicacao }

function TMultiplicacao.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 * Num2;
end;

{ TDivisao }

function TDivisao.Operacao(Num1, Num2: double): double;
begin
  try
    Result := Num1 / Num2;
  except
    on E: Exception do
      raise Exception.Create('Erro ao dividir');
  end;
end;

{ TSoma }

function TSoma.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 + Num2;
end;

{ TSubtracao }

function TSubtracao.Operacao(Num1, Num2: double): double;
begin
  Result := Num1 - Num2;
end;

{ TOperacao }

class function TOperacao.New: ICalculadoraOperacao;
begin
  Result := Self.Create;
end;

end.
