unit eNota.Controller.NotaFiscal.Criar;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalCriar = class(TInterfacedObject, ICommand)
  private
    FParent: INotaFiscal;
  public
    constructor Create(ANotaFiscal: INotaFiscal);
    class function New(ANotaFiscal: INotaFiscal): ICommand;
    function Execute: ICommand;
  end;

implementation

{ TControllerNotaFiscalCriar }

constructor TControllerNotaFiscalCriar.Create(ANotaFiscal: INotaFiscal);
begin
  FParent := ANotaFiscal;
end;

function TControllerNotaFiscalCriar.Execute: ICommand;
begin
  Result := Self;
  FParent.Criar;
end;

class function TControllerNotaFiscalCriar.New(ANotaFiscal: INotaFiscal): ICommand;
begin
  Result := Self.Create(ANotaFiscal);

end;

end.
