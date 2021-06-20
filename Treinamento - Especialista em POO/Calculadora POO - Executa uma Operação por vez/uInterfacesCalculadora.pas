unit uInterfacesCalculadora;

interface

uses
  Vcl.StdCtrls;

type
  ICalculadora = interface

    ['{69329DE7-9DD0-44C8-AD42-F8EAD02D2EF2}']

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

  end;

  ICalculadoraOperacao = interface
    ['{A382F211-5B6A-47A5-B574-B792400576BF}']
    function Operacao(Num1, Num2: double): double;
  end;

implementation

end.
