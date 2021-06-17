unit eNota.Controller.NotaFiscal.Validar;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalValidar = class(TInterfacedObject, ICommand)
  private
    FParent: INotaFiscal;
  public
    constructor Create(ANotaFiscal: INotaFiscal);
    class function New(ANotaFiscal: INotaFiscal): ICommand;
    function Execute: ICommand;
  end;

implementation

{ TControllerNotaFiscalValidar }

constructor TControllerNotaFiscalValidar.Create(ANotaFiscal: INotaFiscal);
begin
  FParent := ANotaFiscal;
end;

function TControllerNotaFiscalValidar.Execute: ICommand;
begin
  Result := Self;
  FParent.Validar;
end;

class function TControllerNotaFiscalValidar.New(ANotaFiscal: INotaFiscal): ICommand;
begin
  Result := Self.Create(ANotaFiscal);

end;

end.
