unit eConexao.Model.Conexao.Firedac;

interface

uses
  eConexao.Model.Interfaces, FireDAC.Comp.Client, Data.DB;

type
  TConexaoFiredac = class(TInterfacedObject, IConexao)
  private
    FConexao: TFDConnection;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IConexao;
    function Conexao: TCustomConnection;
  end;

implementation

uses
  System.SysUtils;

{ TConexaoFiredac }

function TConexaoFiredac.Conexao: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(nil);

  //Somente testando dessa forma, essas configs viriam de um outra classe
  FConexao.DriverName := 'FB';
  FConexao.Params.Database := 'C:\temp\DB.gdb';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.Connected := True;
end;

destructor TConexaoFiredac.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TConexaoFiredac.New: IConexao;
begin
  Result := Self.Create;
end;

end.
