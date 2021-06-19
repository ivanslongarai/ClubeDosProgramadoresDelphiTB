unit eEntidadeA.Controller.Factory.Query;

interface

uses
  Firedac.Stan.Intf, Firedac.Stan.Option,
  Firedac.Stan.Error, Firedac.UI.Intf, Firedac.Phys.Intf, Firedac.Stan.Def,
  Firedac.Stan.Pool, Firedac.Stan.Async, Firedac.Phys, Firedac.VCLUI.Wait,
  Data.DB, Firedac.Comp.Client, eEntidadeA.Controller.Factory.Interfaces,
  eConexao.Model.Interfaces;

type
  TControllerFactoryQuery = class(TInterfacedObject, IFactoryQuery)
  private
  public
    class function New: IFactoryQuery;
    function Query(AConnection: IConexao): IQuery;
  end;

implementation

uses
  System.SysUtils, eConexao.Model.Conexao.Firedac,
  eConexao.Model.Query.Firedac;

{ TControllerFactoryQuery }

class function TControllerFactoryQuery.New: IFactoryQuery;
begin
  Result := Self.Create;
end;

function TControllerFactoryQuery.Query(AConnection: IConexao): IQuery;
begin
  Result := TQueryFiredac.New(AConnection)
end;

end.
