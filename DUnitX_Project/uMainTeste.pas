unit uMainTeste;

interface

uses
  DUnitX.TestFramework, uPessoa;

type

  [TestFixture]
  TMyTestObject = class(TObject)
  private
    FPessoa: TPessoa;
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
  end;

implementation

uses
  System.SysUtils;

procedure TMyTestObject.Setup;
begin
  FPessoa := TPessoa.Create;
end;

procedure TMyTestObject.TearDown;
begin
  FreeAndNil(FPessoa);
end;

procedure TMyTestObject.TesteTratarCpfCnpj(AValue, AResult: string);
var
  Resultado: string;
begin
  Resultado := FPessoa.TratarCpfCnpj(AValue);
  Assert.IsTrue(Resultado = AResult, 'TPessoa.TratarCpfCnpj');
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
