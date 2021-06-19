unit eConexao.Model.Interfaces;

interface

uses
  Data.DB;

type
  IConexao = interface
    ['{0353BF1C-68C0-4027-8D23-95951AF3594E}']
    function Conexao: TCustomConnection;
  end;

  IQuery = interface
    ['{AAFB853D-0291-46F6-B9CF-625F608DB7A7}']
    function SetSQL(AValue : string) : IQuery;
    function Open : IQuery;
    function DataSet : TDataSet;
  end;

  IEntidade = interface
    ['{0D7D6B04-8CCA-4EE8-8F0D-BCF8E11FC7B5}']
    function Listar(AValue : TDataSource) : IEntidade;
    function ListarCampos(AValue : TDataSource; ACampos: string) : IEntidade;
  end;

implementation

end.
