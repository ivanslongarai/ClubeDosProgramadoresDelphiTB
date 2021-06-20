unit uMainTeste;

// Added the https://github.com/VSoftTechnologies/Delphi-Mocks Content on the project's search path
// (C:\Delphi-Mocks\Delphi-Mocks\Source)
// Cloned into C:\Delphi-Mocks\Delphi-Mocks

interface

uses
  DUnitX.TestFramework, uPessoa, uPessoaDAO;

type

  [TestFixture]
  TMyTestObject = class(TObject)
  private
    FPessoa: TPessoa;
    FPessoaDAO: TPessoaDAO;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TesteTratarCpfCnpj; overload;
    [Test]
    [TestCase('CaseCPF', '123.567.789-00,12356778900')]
    [TestCase('CaseCNPJ', '12.567.789/0001-89,12567789000189')]
    procedure TesteTratarCpfCnpj(AValue: string; AResult: string); overload;
    [Test]
    procedure ValidaNome;
    [Test]
    procedure ValidarCampos;
    [Test]
    procedure OperacoesBanco;
  end;

implementation

uses
  System.SysUtils, Delphi.Mocks;

procedure TMyTestObject.OperacoesBanco;
var
  newId: Integer;
  dataNasc: TDateTime;

begin

  newId := FPessoaDAO.getNextId();
  dataNasc := Now;

  // Testa Update
  FPessoaDAO.Entidade.Id := newId;
  FPessoaDAO.Entidade.Nome := 'Ivan';
  FPessoaDAO.Entidade.SobreNome := 'Longarai';
  FPessoaDAO.Entidade.Idade := 30;
  FPessoaDAO.Entidade.DataNascimento := dataNasc;
  FPessoaDAO.Entidade.CpfCnpj := '744.521.876-96';
  FPessoaDAO.Insert;

  FPessoaDAO.BuscarId(newId.ToString);

  Assert.IsTrue(FPessoaDAO.Entidade.Id = newId, 'TPessoaDAO.Insert.Id');
  Assert.IsTrue(FPessoaDAO.Entidade.Nome = 'Ivan', 'TPessoaDAO.Insert.Nome');
  Assert.IsTrue(FPessoaDAO.Entidade.SobreNome = 'Longarai', 'TPessoaDAO.Insert.SobreNome');
  Assert.IsTrue(FPessoaDAO.Entidade.Idade = 30, 'TPessoaDAO.Insert.Idade');
  Assert.IsTrue(FPessoaDAO.Entidade.DataNascimento = dataNasc, 'TPessoaDAO.Insert.DataNascimento');
  Assert.IsTrue(FPessoaDAO.Entidade.CpfCnpj = '74452187696', 'TPessoaDAO.Insert.CpfCnpj');

  // Testa Update
  FPessoaDAO.Entidade.Id := newId;
  FPessoaDAO.Entidade.Nome := 'Ivan2';
  FPessoaDAO.Update;
  Assert.IsTrue(FPessoaDAO.Entidade.Nome = 'Ivan2', 'TPessoaDAO.Update.Nome');

  // Testa Delete
  FPessoaDAO.Delete;
  Assert.IsTrue(FPessoaDAO.idExists(newId.ToString) = False, 'TPessoaDAO.Delete');

end;

procedure TMyTestObject.Setup;
begin
  FPessoa := TPessoa.Create;
  // Delphi.Mocks implementa a injeção de dependência de forma que possamos testar a classe sem termos que implementar a interface nós mesmos
  FPessoaDAO := TPessoaDAO.Create(TStub<ILog>.Create);
end;

procedure TMyTestObject.TearDown;
begin
  FreeAndNil(FPessoa);
  FreeAndNil(FPessoaDAO);
end;

procedure TMyTestObject.TesteTratarCpfCnpj(AValue, AResult: string);
var
  Resultado: string;
begin
  Resultado := FPessoa.TratarCpfCnpj(AValue);
  Assert.AreEqual(Resultado, AResult, 'TPessoa.TratarCpfCnpj');
end;

procedure TMyTestObject.ValidaNome;
begin
  FPessoa.Nome := 'Ivan';
  Assert.IsNotEmpty(FPessoa.Nome, 'FPessoa.Nome está vazia');
end;

procedure TMyTestObject.ValidarCampos;
begin
  FPessoa.Nome := '';
  // Para o teste passar tem que levantar a exception
  Assert.WillRaise(FPessoa.ValidarCampos, nil, 'TPessoa.ValidarCampos');
end;

procedure TMyTestObject.TesteTratarCpfCnpj;
var
  Resultado: string;
begin
  Resultado := FPessoa.TratarCpfCnpj('123.568.698-14');
  Assert.IsTrue(Resultado = '12356869814');
end;

initialization

TDUnitX.RegisterTestFixture(TMyTestObject);

end.
