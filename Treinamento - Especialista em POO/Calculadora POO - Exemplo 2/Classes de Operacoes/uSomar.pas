unit uSomar;

interface

uses
  uInterfacesCalculadora, uOperacoes, System.Generics.Collections;

type
  TSomar = class sealed(TOperacoes)
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

{ TSomar }

constructor TSomar.Create(AList: TList<double>);
begin
  FList := AList;
end;

destructor TSomar.Destroy;
begin

  inherited;
end;

function TSomar.Executar: string;
var
  I: Integer;
begin
  Result := FList[0].ToString;
  for I := 1 to Pred(FList.Count) do
    Result := (Result.ToDouble + FList[I]).ToString;
  DisplayResultado(Result);
  inherited;
end;

class function TSomar.New(AList: TList<double>): IOperacoes;
begin
  Result := Self.Create(AList);
end;

end.
