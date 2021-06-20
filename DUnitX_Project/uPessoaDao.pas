unit uPessoaDao;

interface

uses uDM, uPessoa, FireDAC.Comp.Client, Data.DB;

type
  TPessoaDAO = class
  private
    FPessoa: TPessoa;
    FQuery: TFDQuery;
  public
    constructor Create;
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

constructor TPessoaDAO.Create;
begin
  if not Assigned(DM) then
    DM := TDM.Create(Application);
  FPessoa := TPessoa.Create;
  FQuery := DM.FDQuery;
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
