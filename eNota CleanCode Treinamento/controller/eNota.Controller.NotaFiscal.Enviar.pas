unit eNota.Controller.NotaFiscal.Enviar;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalEnviar = class(TInterfacedObject, ICommand)
  private
    FParent: INotaFiscal;
  public
    constructor Create(ANotaFiscal: INotaFiscal);
    class function New(ANotaFiscal: INotaFiscal): ICommand;
    function Execute: ICommand;
  end;

implementation

{ TControllerNotaFiscalEnviar }

constructor TControllerNotaFiscalEnviar.Create(ANotaFiscal: INotaFiscal);
begin
  FParent := ANotaFiscal;
end;

function TControllerNotaFiscalEnviar.Execute: ICommand;
begin
  Result := Self;
  FParent.Enviar;
end;

class function TControllerNotaFiscalEnviar.New(ANotaFiscal: INotaFiscal): ICommand;
begin
  Result := Self.Create(ANotaFiscal);

end;

end.
