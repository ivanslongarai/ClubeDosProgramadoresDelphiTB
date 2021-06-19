unit eEntidadeA.Controller.Factory.Interfaces;

interface

uses
  eConexao.Model.Interfaces;

type
  IFactoryQuery = interface
    ['{436C5192-199D-47F8-BCD8-5111C2B2B341}']
    function Query(AConnection : IConexao) : IQuery;
  end;

implementation

end.
