unit eConexao.Model.Entidade.A;

interface

uses
  eConexao.Model.Interfaces, Data.DB;

type
  TEntidadeA = class(TInterfacedObject, IEntidade)
  private
    FQuery: IQuery;
  public
    constructor Create;
    class function New: IEntidade;
    function Listar(AValue: TDataSource): IEntidade;
    function ListarCampos(AValue: TDataSource; ACampos: string): IEntidade;
  end;

implementation

uses
  System.SysUtils, eEntidadeA.Controller.Factory.Query;

{ TEntidadeA }

constructor TEntidadeA.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

function TEntidadeA.Listar(AValue: TDataSource): IEntidade;
begin
  Result := Self;
  FQuery.SetSQL('SELECT * FROM A');
  FQuery.Open;
  AValue.DataSet := FQuery.DataSet;
end;

function TEntidadeA.ListarCampos(AValue: TDataSource; ACampos: string): IEntidade;
begin
  Result := Self;
  FQuery.SetSQL('SELECT ' + ACampos + ' FROM A');
  FQuery.Open;
  AValue.DataSet := FQuery.DataSet;
end;

class function TEntidadeA.New: IEntidade;
begin
  Result := Self.Create;
end;

end.
