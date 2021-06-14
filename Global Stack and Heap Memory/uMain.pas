unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TType = record
    Value: Integer;
  end;

type
  TExampleClass = class

  end;

type
  TfrmMain = class(TForm)
    btnStack: TButton;
    btnHeap: TButton;
    btnGlobalMemory: TButton;
    Memo1: TMemo;
    procedure btnStackClick(Sender: TObject);
    procedure btnHeapClick(Sender: TObject);
    procedure btnGlobalMemoryClick(Sender: TObject);
  private
{$HINTS OFF}
    FRecord: TType; // Allocated on LIFO (last in, first out) (fast processing)
{$HINTS ON}
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnGlobalMemoryClick(Sender: TObject);
begin
  ShowMessage('Check this out on the code, by reading the comments');
//  Memory in Your Delphi Applications
//  Running your application on Windows, there are three areas in the memory where your application stores data: global memory, heap, and stack.
//
//
//  Global variables (their values/data) are stored in the global memory.
//    The memory for global variables is reserved by your application when the program starts and remains allocated until your program terminates.
//    The memory for global variables is called "data segment".
//
//  Since global memory is only once allocated and freed at program termination, we do not care about it so much.
end;

procedure TfrmMain.btnHeapClick(Sender: TObject);
var
 o : TExampleClass;

begin
  ShowMessage('Check this out on the code, by reading the comments');

  try
    o := TExampleClass.Create; //Instances of class use heap to allocate the memory
  finally
    FreeAndNil(o);
  end;

//  What Is Heap?
//  A heap is a region of memory in which dynamically allocated memory is stored.
//    When you create an instance of a class, the memory is allocated from the heap.
//
//  In Delphi programs, heap memory is used by/when
//
//  Creating an instance of a class.
//  Creating and resizing dynamic arrays.
//  Explicitly allocating memory using GetMem, FreeMem, New and Dispose().
//  Using ANSI/wide/Unicode strings, variants, interfaces (managed automatically by Delphi).
//  Heap memory has no nice layout where there would be some order is allocating blocks of memory.
//    Heap looks like a can of marbles. Memory allocation from the heap is random,
//    a block from here than a block from there. Thus, heap operations are a bit slower than those on the stack.
//
//  When you ask for a new memory block (i.e. create an instance of a class),
//    Delphi memory manager will handle this for you: you'll get a new memory block or a used and discarded one.
//
//  The heap consists of all virtual memory (RAM and disk space).

end;

procedure TfrmMain.btnStackClick(Sender: TObject);
var
  Y, X, Z: Integer;

begin
  ShowMessage('Check this out on the code, by reading the comments');

  X := 10;
  Y := 20;
  Z := X + Y;
  ShowMessage(Z.ToString);

//  What Is Stack?
//  When you declare a variable inside a function, the memory required to hold the variable is allocated from the stack.
//    You simply write "var x: integer", use "x" in your function, and when the function exits,
//    you do not care about memory allocation nor freeing. When the variable goes out of scope (code exits the function),
//    the memory which was taken on the stack is freed.
//
//  The stack memory is allocated dynamically using the LIFO ("last in first out") approach.
//
//  In Delphi programs, stack memory is used by
//
//  Local routine (method, procedure, function) variables.
//  Routine parameters and return types.
//  Windows API function calls.

//  Records (this is why you do not have to explicitly create an instance of a record type).
//  You do not have to explicitly free the memory on the stack, as the memory is auto-magically
//    allocated for you when you, for example, declare a local variable to a function. When the function exits
//    (sometimes even before due to Delphi compiler optimization) the memory for the variable will be auto-magically freed.
//
//  Stack memory size is, by default, large enough for your (as complex as they are) Delphi programs. The "Maximum Stack Size"
//    and "Minimum Stack Size" values on the Linker options for your project specify default values -- in 99.99% you would not need to alter this.
//
//  Think of a stack as a pile of memory blocks. When you declare/use a local variable,
//    Delphi memory manager will pick the block from the top, use it, and when no longer needed it will be returned back to the stack.
//
//  Having local variable memory used from the stack, local variables are not initialized when declared.
//    Declare a variable "var x: integer" in some function and just try reading the value when you enter the function -- x will have some "weird" non-zero value. So, always initialize (or set value) to your local variables before you read their value.
//
//  Due to LIFO, stack (memory allocation) operations are fast as only a few operations (push, pop) are required to manage a stack.

end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
