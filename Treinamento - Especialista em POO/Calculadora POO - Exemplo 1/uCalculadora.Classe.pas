unit uCalculadora.Classe;

interface

uses uInterfacesCalculadora, Vcl.StdCtrls, System.Classes,
  System.Generics.Collections;

type

  TCalculadora = class(TInterfacedObject, ICalculadora)
  public

    function Somar(Num1, Num2: double): double; overload;
    function Subtrair(Num1, Num2: double): double; overload;
    function Dividir(Num1, Num2: double): double; overload;
    function Multiplicar(Num1, Num2: double): double; overload;

    function Somar(Num1, Num2: string): double; overload;
    function Subtrair(Num1, Num2: string): double; overload;
    function Dividir(Num1, Num2: string): double; overload;
    function Multiplicar(Num1, Num2: string): double; overload;

    function Somar(Num1, Num2: TCustomEdit): double; overload;
    function Subtrair(Num1, Num2: TCustomEdit): double; overload;
    function Dividir(Num1, Num2: TCustomEdit): double; overload;
    function Multiplicar(Num1, Num2: TCustomEdit): double; overload;

    class function New: ICalculadora;

  end;

implementation

{ TCalculadora }

uses uOperacoes, System.SysUtils;

function TCalculadora.Dividir(Num1, Num2: double): double;
begin
  Result := TDivisao.New.Operacao(Num1, Num2);
end;

function TCalculadora.Multiplicar(Num1, Num2: double): double;
begin
  Result := TMultiplicacao.New.Operacao(Num1, Num2);
end;

function TCalculadora.Somar(Num1, Num2: double): double;
begin
  Result := TSoma.New.Operacao(Num1, Num2);
end;

function TCalculadora.Subtrair(Num1, Num2: double): double;
begin
  Result := TSubtracao.New.Operacao(Num1, Num2);
end;

function TCalculadora.Multiplicar(Num1, Num2: string): double;
begin
  Result := Multiplicar(StrToFloatDef(Num1, 0), StrToFloatDef(Num2, 0));
end;

class function TCalculadora.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Dividir(Num1, Num2: string): double;
begin
  Result := Dividir(StrToFloatDef(Num1, 0), StrToFloatDef(Num2, 0));
end;

function TCalculadora.Somar(Num1, Num2: string): double;
begin
  Result := Somar(StrToFloatDef(Num1, 0), StrToFloatDef(Num2, 0));
end;

function TCalculadora.Subtrair(Num1, Num2: string): double;
begin
  Result := Subtrair(StrToFloatDef(Num1, 0), StrToFloatDef(Num2, 0));
end;

function TCalculadora.Dividir(Num1, Num2: TCustomEdit): double;
begin
  Result := Dividir(Num1.Text, Num2.Text);
end;

function TCalculadora.Multiplicar(Num1, Num2: TCustomEdit): double;
begin
  Result := Multiplicar(Num1.Text, Num2.Text);
end;

function TCalculadora.Somar(Num1, Num2: TCustomEdit): double;
begin
  Result := Somar(Num1.Text, Num2.Text);
end;

function TCalculadora.Subtrair(Num1, Num2: TCustomEdit): double;
begin
  Result := Subtrair(Num1.Text, Num2.Text);
end;

end.
