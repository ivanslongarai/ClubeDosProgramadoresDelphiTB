unit uCalculadora.Classe;

interface

uses uInterfacesCalculadora, System.Generics.Collections,
  Calculadora.Eventos;

type

  TCalculadora = class(TInterfacedObject, ICalculadora, ICalculadoraDisplay)
  private
    FList: TList<double>;
    FEvDisplayTotal: TEvDisplay;
  public

    function Add(AValue: string): ICalculadora; overload;
    function Add(AValue: double): ICalculadora; overload;
    function Add(AValue: Integer): ICalculadora; overload;

    function Dividir: IOperacoes;
    function Somar: IOperacoes;
    function Subtrair: IOperacoes;
    function Multiplicar: IOperacoes;

    constructor Create;
    destructor Destroy; override;

    function Resultado(AValue: TEvDisplay): ICalculadoraDisplay;
    function EndDisplay: ICalculadora;
    function Display: ICalculadoraDisplay;
    class function New: ICalculadora;

  end;

implementation

{ TCalculadora }

uses uOperacoes, System.SysUtils, uDividir, uSomar, uSubtrair, uMultiplicar;

function TCalculadora.Somar: IOperacoes;
begin
  Result := TSomar.New(FList).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

function TCalculadora.Subtrair: IOperacoes;
begin
  Result := TSubtrair.New(FList).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

function TCalculadora.Add(AValue: double): ICalculadora;
begin
  Result := Self;
  FList.Add(AValue);
end;

function TCalculadora.Add(AValue: string): ICalculadora;
begin
  Result := Self;
  FList.Add(AValue.ToDouble);
end;

function TCalculadora.Add(AValue: Integer): ICalculadora;
begin
  Result := Self;
  FList.Add(AValue.ToDouble);
end;

constructor TCalculadora.Create;
begin
  FList := TList<double>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

function TCalculadora.Dividir: IOperacoes;
begin
  Result := TDividir.New(FList).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

function TCalculadora.EndDisplay: ICalculadora;
begin
  Result := Self;
end;

function TCalculadora.Multiplicar: IOperacoes;
begin
  Result := TMultiplicar.New(FList).Display.Resultado(FEvDisplayTotal).EndDisplay;
end;

class function TCalculadora.New: ICalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Resultado(AValue: TEvDisplay): ICalculadoraDisplay;
begin
  Result := Self;
  FEvDisplayTotal := AValue;
end;

function TCalculadora.Display: ICalculadoraDisplay;
begin
  Result := Self;
end;

end.
