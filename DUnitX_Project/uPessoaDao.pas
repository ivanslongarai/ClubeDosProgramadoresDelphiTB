unit uPessoaDao;

interface

{$M+}
// The {$M} switch directive controls generation of
// run-time type information (RTTI). When a class is declared in the
// {$M+} state, or is derived from a class that was declared in the
// {$M+} state, the compiler generates run-time type information for
// properties and events that are declared in a published section.

uses uDM, uPessoa, FireDAC.Comp.Client, Data.DB;

type
  ILog = interface
    ['{BAE54EC2-403F-4457-9560-0F45317A10F5}']
    procedure GravarLog(ALog: string);
  end;

  ISession = interface
    ['{3721EC59-7F93-4218-BDEA-AEB47BB87A80}']
    function User: string;
  end;

  TPessoaDAO = class
  private
    FPessoa: TPessoa;
    FQuery: TFDQuery;
    FLog: ILog;
    FSession: ISession;
  public
    constructor Create(ALog: ILog; ASession: ISession);
    destructor Destroy; override;
    function Entidade: TPessoa;
    procedure ValidarCampos;
    procedure Insert;
    procedure Update;
    procedure Delete;
    function getNextId: Integer;
    procedure BuscarId(AId: string);
    function idExists(AId: string): Boolean;
  end;

implementation

uses
  System.SysUtils, Vcl.Forms;

{ TPessoaDAO }

procedure TPessoaDAO.BuscarId(AId: string);
begin
  FQuery.Open('SELECT * FROM PESSOA WHERE ID = ' + AId);
  FQuery.First;
  if not FQuery.IsEmpty then
  begin
    FPessoa.Id := StrToInt(AId);
    FPessoa.Nome := FQuery.FieldByName('Nome').AsString;
    FPessoa.SobreNome := FQuery.FieldByName('SobreNome').AsString;
    FPessoa.Idade := FQuery.FieldByName('Idade').AsInteger;
    FPessoa.DataNascimento := FQuery.FieldByName('DataNascimento').AsDateTime;
    FPessoa.CpfCnpj := FQuery.FieldByName('CpfCnpj').AsString;
  end;
end;

constructor TPessoaDAO.Create(ALog: ILog; ASession: ISession);
begin
  if not Assigned(DM) then
    DM := TDM.Create(Application);
  FPessoa := TPessoa.Create;
  FQuery := DM.FDQuery;
  FLog := ALog;
  FSession := ASession;
  FLog.GravarLog('User: ' + ASession.User);
end;

procedure TPessoaDAO.Delete;
begin
  FQuery.Open('SELECT * FROM PESSOA WHERE ID = ' + FPessoa.Id.ToString);
  if not FQuery.IsEmpty then
  begin
    FQuery.Delete;
    FQuery.ApplyUpdates(0);
  end;
end;

destructor TPessoaDAO.Destroy;
begin
  FreeAndNil(FPessoa);
  inherited;
end;

function TPessoaDAO.Entidade: TPessoa;
begin
  Result := Self.FPessoa;
end;

function TPessoaDAO.getNextId: Integer;
begin
  FQuery.Open('SELECT COALESCE(MAX(ID) + 1, 1) FROM PESSOA');
  Result := FQuery.Fields[0].AsInteger;
end;

function TPessoaDAO.idExists(AId: string): Boolean;
begin
  FQuery.Open('SELECT * FROM PESSOA WHERE ID = ' + AId);
  Result := not FQuery.IsEmpty;
end;

procedure TPessoaDAO.Insert;
begin
  ValidarCampos;
  FQuery.Open('SELECT * FROM PESSOA WHERE 1=2');
  FQuery.Insert;
  FQuery.FieldByName('Id').AsInteger := FPessoa.Id;
  FQuery.FieldByName('Nome').AsString := FPessoa.Nome;
  FQuery.FieldByName('SobreNome').AsString := FPessoa.SobreNome;
  FQuery.FieldByName('Idade').AsInteger := FPessoa.Idade;
  FQuery.FieldByName('DataNascimento').AsDateTime := FPessoa.DataNascimento;
  FQuery.FieldByName('CpfCnpj').AsString := FPessoa.TratarCpfCnpj(FPessoa.CpfCnpj);
  FQuery.Post;
  FQuery.ApplyUpdates(0);
end;

procedure TPessoaDAO.Update;
begin
  FQuery.Open('SELECT * FROM PESSOA WHERE ID = ' + FPessoa.Id.ToString);
  FQuery.First;
  FQuery.Edit;
  FQuery.FieldByName('Nome').AsString := FPessoa.Nome;
  FQuery.FieldByName('SobreNome').AsString := FPessoa.SobreNome;
  FQuery.FieldByName('Idade').AsInteger := FPessoa.Idade;
  FQuery.FieldByName('DataNascimento').AsDateTime := FPessoa.DataNascimento;
  FQuery.FieldByName('CpfCnpj').AsString := FPessoa.TratarCpfCnpj(FPessoa.CpfCnpj);
  FQuery.Post;
  FQuery.ApplyUpdates(0);
end;

procedure TPessoaDAO.ValidarCampos;
begin
  //
end;

end.
