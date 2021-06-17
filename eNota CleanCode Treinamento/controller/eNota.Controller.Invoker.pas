unit eNota.Controller.Invoker;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces, System.Generics.Collections;

type
  TControllerInvoker = class(TInterfacedObject, IInvoker)
  private
    FLista: TList<ICommand>;
  public
    constructor Create;
    function Add(AValue: ICommand): IInvoker;
    function Execute: IInvoker;

    class function New: IInvoker;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TControllerInvoker }

function TControllerInvoker.Add(AValue: ICommand): IInvoker;
begin
  Result := Self;
  FLista.Add(AValue);
end;

constructor TControllerInvoker.Create;
begin
  FLista := TList<ICommand>.Create;
end;

destructor TControllerInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TControllerInvoker.Execute: IInvoker;
var
 I : Integer;
begin
  Result := Self;
  ShowMessage('Vai Iniciar a executar os métodos');
  for I := 0 to Pred(FLista.Count) do
    FLista[I].Execute;
end;

class function TControllerInvoker.New: IInvoker;
begin
  Result := Self.Create;
end;

end.
