unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  ITestARC = interface
  end;
  TTestARC = class(TInterfacedObject, ITestARC)
  end;
  TTest = class
  end;

  TfrmMain = class(TForm)
    btnTest: TButton;
    btnUnsafe: TButton;
    btnWeak: TButton;
    procedure btnTestClick(Sender: TObject);
    procedure btnUnsafeClick(Sender: TObject);
    procedure btnWeakClick(Sender: TObject);
  private
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uWeak;

procedure TfrmMain.btnTestClick(Sender: TObject);
var
  o: ITestARC;
  obj: TTest;

begin
  o := TTestARC.Create; // ARC free it by itSelf
  obj := TTest.Create; // That will create a Leak of Memory if we don't free it ourselves
  FreeAndNil(obj);
end;

procedure TfrmMain.btnUnsafeClick(Sender: TObject);
var
  [unsafe]
  o: ITestARC;
begin
  o := TTestARC.Create;
  TTestARC(o).Free; // The reference count is not cleared when the program exits,
                    // resulting in a memory leak,
                    // you need to manually clear the reference count.

  // What if the object has a standard reference count implementation and you
  // want to create an interface reference that is kept out of the total count of
  // references? You can now achieve this by adding the [unsafe] attribute to the
  // interface variable declaration

  // Not that this is a good idea, as the code above would cause a memory leak.
  // By disabling the reference counting, when the variable goes out of scope
  // nothing happens. There are some scenarios in which this is beneficial,
  // as you can still use interfaces and not trigger the extra reference.
  // In other words, an unsafe reference is treated just like... a pointer,
  // with no extra compiler support.

end;

procedure TfrmMain.btnWeakClick(Sender: TObject);
begin

  ShowMessage(TPurchaseOrder
     .New
     .SetTitle('PurchaseOrder title got by acessing the Product Parent Property')
     .Product
     .Sell
     .GetParent
     .GetTitle);

  //Automatic Reference Counting still requires manual tweaking to avoid memory leaks.
  //It is very easy to (inadvertently) create a reference cycle (aka circular reference)
  //  between two or more objects.
  //These cycles will prevent these objects from being freed, resulting in a memory leak.
  //To avoid this, you need to make some references [weak].
  //It is not always obvious if there is a reference cycle in you code,
  //  especially if the chain of references is long. Furthermore,
  // it is very difficult to detect a reference cycle at run-time.


end;

initialization

ReportMemoryLeaksOnShutdown := True

end.
