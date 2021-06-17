unit eNota.Controller.NotaFiscal.Interfaces;

interface

type
  ICommand = interface
    ['{0BE4B004-8DD9-4CD7-A461-1497464E0B70}']
    function Execute: ICommand;
  end;

  IInvoker = interface
    ['{B7AD56ED-3D09-4419-B4A7-789BC84EAAC7}']
    function Add(AValue: ICommand): IInvoker;
    function Execute: IInvoker;
  end;

  INotaFiscal = interface
    ['{A0C36AD6-0E3F-4DD9-89E2-B7B78FA20773}']
    function Criar: INotaFiscal;
    function Validar: INotaFiscal;
    function Enviar: INotaFiscal;
    function Gravar: INotaFiscal;
    function EnviarEmail: INotaFiscal;
    function ImportarPedido(ACodPedido: Integer): INotaFiscal;
  end;

  INotaFiscalView = Interface
    ['{82D7C748-9377-4BB9-B87F-5019CE0E15A5}']
    function EnviarNotaSefaz: INotaFiscal;
    function EnviarNotaSefazSemEmail : INotaFiscal;
    function GerarNotaPedido(ACodigoPedido: Integer) : INotaFiscal;
  End;

implementation

end.
