unit eNota.Controller.NotaFiscal.ImportarPedido;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalImportarPedido = class(TInterfacedObject, ICommand)
  private
    FParent: INotaFiscal;
    FNumeroPedido: Integer;
  public
    constructor Create(ANotaFiscal: INotaFiscal; ANumeroPedido: Integer);
    class function New(ANotaFiscal: INotaFiscal; ANumeroPedido: Integer): ICommand;
    function Execute: ICommand;
  end;

implementation

{ TControllerNotaFiscalImportarPedido }

constructor TControllerNotaFiscalImportarPedido.Create(ANotaFiscal: INotaFiscal; ANumeroPedido: Integer);
begin
  FNumeroPedido := ANumeroPedido;
  FParent := ANotaFiscal;
end;

function TControllerNotaFiscalImportarPedido.Execute: ICommand;
begin
  Result := Self;
  FParent.ImportarPedido(FNumeroPedido);
end;

class function TControllerNotaFiscalImportarPedido.New(ANotaFiscal: INotaFiscal; ANumeroPedido: Integer): ICommand;
begin
  Result := Self.Create(ANotaFiscal, ANumeroPedido);
end;

end.
