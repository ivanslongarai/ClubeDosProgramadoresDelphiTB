unit uDividir;

interface

uses
  uInterfacesCalculadora, uOperacoes, System.Generics.Collections;

type
  TDividir = class sealed(TOperacoes)
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

{ TDividir }

constructor TDividir.Create(AList: TList<double>);
begin
  FList := AList;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Executar: string;
var
  I: Integer;
begin
  try
    Result := FList[0].ToString;
    for I := 1 to Pred(FList.Count) do
      Result := (Result.ToDouble / FList[I]).ToString;
    DisplayResultado(Result);
  except
    on E: Exception do
      raise Exception.Create('Erro na divisão');
  end;
  inherited;
end;

class function TDividir.New(AList: TList<double>): IOperacoes;
begin
  Result := Self.Create(AList);
end;

end.
