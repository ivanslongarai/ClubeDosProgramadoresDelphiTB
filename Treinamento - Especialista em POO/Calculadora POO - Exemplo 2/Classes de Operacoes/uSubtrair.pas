unit uSubtrair;

interface

uses
  uInterfacesCalculadora, uOperacoes, System.Generics.Collections, uHelpers;

type
  TSubtrair = class sealed(TOperacoes)
  private
  public
    constructor Create(AList: TList<double>);
    class function New(AList: TList<double>): IOperacoes;
    destructor Destroy; override;
    function Executar: string; override; final;
  end;

implementation

uses
  System.Classes, SysUtils;

{ TSubtrair }

constructor TSubtrair.Create(AList: TList<double>);
begin
  FList := AList;
end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

function TSubtrair.Executar: string;
var
  I: Integer;
begin
  Result := FList[0].ToString;
  for I := 1 to Pred(FList.Count) do
    Result := (Result.ToDouble - FList[I]).ToString;
  DisplayResultado(Result);
  inherited;
end;

class function TSubtrair.New(AList: TList<double>): IOperacoes;
begin
  Result := Self.Create(AList);
end;

end.
