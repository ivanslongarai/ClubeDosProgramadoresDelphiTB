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
    procedure TesteTratarCpfCnpj;
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

procedure TMyTestObject.TesteTratarCpfCnpj;
var
  Resultado: string;
begin
  Resultado := FPessoa.TratarCpfCnpj('123.568.698.14');
  Assert.IsTrue(Resultado = '12356869814');
end;

initialization

TDUnitX.RegisterTestFixture(TMyTestObject);

end.
