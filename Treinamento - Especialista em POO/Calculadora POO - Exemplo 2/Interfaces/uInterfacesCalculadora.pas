unit uInterfacesCalculadora;

interface

uses
  Calculadora.Eventos;

type
  ICalculadora = interface;
  IOperacoesDisplay = interface;

  IOperacoes = interface
    ['{A382F211-5B6A-47A5-B574-B792400576BF}']
    function Executar: string;
    function Display: IOperacoesDisplay;
  end;

  IOperacoesDisplay = interface
    ['{BBEBE432-B067-4288-8F33-3C0D47A384DD}']
    function Resultado(AValue: TEvDisplay): IOperacoesDisplay;
    function EndDisplay: IOperacoes;
  end;

  ICalculadoraDisplay = interface
    ['{A4497B84-B236-481E-9C2E-3FA6462C90B3}']
    function Resultado(AValue: TEvDisplay): ICalculadoraDisplay;
    function EndDisplay: ICalculadora;
  end;

  ICalculadora = interface
    ['{69329DE7-9DD0-44C8-AD42-F8EAD02D2EF2}']
    function Add(AValue: string): ICalculadora; overload;
    function Add(AValue: double): ICalculadora; overload;
    function Add(AValue: Integer): ICalculadora; overload;

    function Dividir: IOperacoes;
    function Somar: IOperacoes;
    function Subtrair: IOperacoes;
    function Multiplicar: IOperacoes;

    function Display: ICalculadoraDisplay;

  end;

implementation

end.
