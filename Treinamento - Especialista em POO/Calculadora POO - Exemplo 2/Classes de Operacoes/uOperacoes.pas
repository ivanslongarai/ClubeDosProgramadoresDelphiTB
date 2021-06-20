unit uOperacoes;

interface

uses uInterfacesCalculadora, System.Classes, System.Generics.Collections,
  Calculadora.Eventos;

type

  TOperacoes = class(TInterfacedObject, IOperacoes, IOperacoesDisplay)
  protected
    FEvDisplayTotal: TEvDisplay;
    FList: TList<double>;
    procedure DisplayResultado(AValue: string);
  public
    function Executar: string; virtual;
    function Display: IOperacoesDisplay;
    function Resultado(AValue: TEvDisplay): IOperacoesDisplay;
    function EndDisplay: IOperacoes;
  end;

implementation

{ TOperacoes }

function TOperacoes.Display: IOperacoesDisplay;
begin
  Result := Self;
end;

procedure TOperacoes.DisplayResultado(AValue: string);
begin
  if Assigned(FEvDisplayTotal) then
    FEvDisplayTotal(AValue)
end;

function TOperacoes.EndDisplay: IOperacoes;
begin
  Result := Self;
end;

function TOperacoes.Executar: string;
begin
  FList.Clear;
end;

function TOperacoes.Resultado(AValue: TEvDisplay): IOperacoesDisplay;
begin
  Result := Self;
  FEvDisplayTotal := AValue;
end;

end.
