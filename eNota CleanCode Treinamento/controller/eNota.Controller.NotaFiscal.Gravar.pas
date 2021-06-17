unit eNota.Controller.NotaFiscal.Gravar;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalGravar = class(TInterfacedObject, ICommand)
  private
    FParent: INotaFiscal;
  public
    constructor Create(ANotaFiscal: INotaFiscal);
    class function New(ANotaFiscal: INotaFiscal): ICommand;
    function Execute: ICommand;
  end;

implementation

{ TControllerNotaFiscalGravar }

constructor TControllerNotaFiscalGravar.Create(ANotaFiscal: INotaFiscal);
begin
  FParent := ANotaFiscal;
end;

function TControllerNotaFiscalGravar.Execute: ICommand;
begin
  Result := Self;
  FParent.Gravar;
end;

class function TControllerNotaFiscalGravar.New(ANotaFiscal: INotaFiscal): ICommand;
begin
  Result := Self.Create(ANotaFiscal);

end;

end.
