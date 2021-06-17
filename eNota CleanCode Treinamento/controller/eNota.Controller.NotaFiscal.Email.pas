unit eNota.Controller.NotaFiscal.EnviarEmail;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type
  TControllerNotaFiscalEnviarEmail = class(TInterfacedObject, ICommand)
  private
    FParent: INotaFiscal;
  public
    constructor Create(ANotaFiscal: INotaFiscal);
    class function New(ANotaFiscal: INotaFiscal): ICommand;
    function Execute: ICommand;
  end;

implementation

{ TControllerNotaFiscalEnviarEmail }

constructor TControllerNotaFiscalEnviarEmail.Create(ANotaFiscal: INotaFiscal);
begin
  FParent := ANotaFiscal;
end;

function TControllerNotaFiscalEnviarEmail.Execute: ICommand;
begin
  Result := Self;
  FParent.EnviarEmail;
end;

class function TControllerNotaFiscalEnviarEmail.New(ANotaFiscal: INotaFiscal): ICommand;
begin
  Result := Self.Create(ANotaFiscal);

end;

end.
