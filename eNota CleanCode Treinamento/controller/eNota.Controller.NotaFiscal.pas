unit eNota.Controller.NotaFiscal;

interface

uses eNota.Controller.NotaFiscal.Interfaces, eNota.Controller.Invoker,
  eNota.Controller.NotaFiscal.Criar, eNota.Controller.NotaFiscal.Gravar,
  eNota.Controller.NotaFiscal.Enviar, eNota.Controller.NotaFiscal.Validar,
  eNota.Controller.NotaFiscal.EnviarEmail;

type
  TControllerNotaFiscal = class(TInterfacedObject, INotaFiscal, INotaFiscalView)
  public
    function Criar: INotaFiscal;
    function Validar: INotaFiscal;
    function Enviar: INotaFiscal;
    function Gravar: INotaFiscal;
    function EnviarEmail: INotaFiscal;
    function EnviarNotaSefaz: INotaFiscal;
    function EnviarNotaSefazSemEmail : INotaFiscal;
    function ImportarPedido(ACodPedido: Integer): INotaFiscal;
    function GerarNotaPedido(ACodigoPedido: Integer) : INotaFiscal;
    class function New: INotaFiscalView;
  end;

implementation

uses
  eNota.Controller.NotaFiscal.ImportarPedido, Vcl.Dialogs, System.Classes,
  System.SysUtils;

{ TControllerNotaFiscal }

function TControllerNotaFiscal.Criar: INotaFiscal;
begin
  Result := Self;
  Showmessage('Criar');
end;

function TControllerNotaFiscal.Enviar: INotaFiscal;
begin
  Result := Self;
  Showmessage('Enviar');
end;

function TControllerNotaFiscal.EnviarEmail: INotaFiscal;
begin
  Result := Self;
  Showmessage('Enviar E-mail');
end;

function TControllerNotaFiscal.EnviarNotaSefaz: INotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEnviarEmail.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.EnviarNotaSefazSemEmail: INotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.GerarNotaPedido(ACodigoPedido: Integer): INotaFiscal;
begin
  Result := Self;
  TControllerInvoker.New
    .Add(TControllerNotaFiscalImportarPedido.New(Self, ACodigoPedido))
    .Add(TControllerNotaFiscalCriar.New(Self))
    .Add(TControllerNotaFiscalValidar.New(Self))
    .Add(TControllerNotaFiscalEnviar.New(Self))
    .Add(TControllerNotaFiscalGravar.New(Self))
    .Add(TControllerNotaFiscalEnviarEmail.New(Self))
    .Execute;
end;

function TControllerNotaFiscal.Gravar: INotaFiscal;
begin
  Result := Self;
  Showmessage('Gravar');
end;

function TControllerNotaFiscal.ImportarPedido(ACodPedido: Integer): INotaFiscal;
begin
  Result := Self;
  Showmessage('Importar Pedido ' + IntToStr(ACodPedido));
end;

class function TControllerNotaFiscal.New: INotaFiscalView;
begin
  Result := Self.Create;
end;

function TControllerNotaFiscal.Validar: INotaFiscal;
begin
  Result := Self;
  Showmessage('Validar');
end;

end.
