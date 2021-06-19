unit eConexao.Model.Query.Firedac;

interface

uses
  eConexao.Model.Interfaces,
  Firedac.Stan.Intf, Firedac.Stan.Option,
  Firedac.Stan.Error, Firedac.UI.Intf, Firedac.Phys.Intf, Firedac.Stan.Def,
  Firedac.Stan.Pool, Firedac.Stan.Async, Firedac.Phys, Firedac.VCLUI.Wait,
  Data.DB, Firedac.Comp.Client;

type
  TQueryFiredac = class(TInterfacedObject, IQuery)
  private
    FParent : IConexao;
    FQuery: TFDQuery;
  public
    constructor Create(AParent: IConexao);
    destructor Destroy; override;
    class function New(AParent: IConexao): IQuery;
    function SetSQL(AValue : string) : IQuery;
    function Open : IQuery;
    function DataSet : TDataSet;
  end;

implementation

uses
  System.SysUtils, eConexao.Model.Conexao.Firedac;

{ TQueryFiredac }

constructor TQueryFiredac.Create(AParent: IConexao);
begin
  FParent := AParent;
  FQuery := TFDQuery.Create(nil);
  if not Assigned(FParent) then
    FParent := TConexaoFiredac.New;
  FQuery.Connection := TFDConnection(FParent.Conexao);
end;

function TQueryFiredac.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TQueryFiredac.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TQueryFiredac.New(AParent: IConexao): IQuery;
begin
  Result := Self.Create(AParent);
end;

function TQueryFiredac.Open: IQuery;
begin
  Result := Self;
  Self.FQuery.Open;
end;

function TQueryFiredac.SetSQL(AValue: string): IQuery;
begin
  Result := Self;
  Self.FQuery.SQL.Text := AValue;
end;

end.
