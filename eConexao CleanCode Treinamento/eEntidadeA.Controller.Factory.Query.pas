unit eEntidadeA.Controller.Factory.Query;

interface

uses
  eEntidadeA.Controller.Factory.Interfaces, eConexao.Model.Interfaces;

type
  TControllerFactoryQuery = class(TInterfacedObject, IFactoryQuery)
  private
  public
    class function New: IFactoryQuery;
    function Query(AConnection: IConexao): IQuery;
  end;

implementation

uses
  System.SysUtils, eConexao.Model.Query.Firedac;

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
