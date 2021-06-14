unit uWeak;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  IProduct<T> = interface
    function Sell: IProduct<T>;
    function GetParent : T;
  end;

  IPurchaseOrder = interface
    function Product: IProduct<IPurchaseOrder>;
    function SetTitle(const Value : string) : IPurchaseOrder;
    function GetTitle : string;
  end;

  //Reference nunber one
  TPurchaseOrder = class(TInterfacedObject, IPurchaseOrder)
  private
    FProducts: TList<IProduct<IPurchaseOrder>>;
    FTitle: string;
  public
    function SetTitle(const Value : string) : IPurchaseOrder;
    function GetTitle : string;
    constructor Create;
    destructor Destroy; override;
    class function New: IPurchaseOrder;
    function Product: IProduct<IPurchaseOrder>;
  end;

  TProduct = class(TInterfacedObject, IProduct<IPurchaseOrder>)
  private
    [weak]
    //There are two references for just one instance of TPurchaseOrder
    //Reference number two
    FParent: IPurchaseOrder;
  public
    function GetParent : IPurchaseOrder;
    constructor Create(AParent: IPurchaseOrder);
    class function New(AParent: IPurchaseOrder): IProduct<IPurchaseOrder>;
    function Sell: IProduct<IPurchaseOrder>;
  end;

implementation

{ TPurchaseOrder }

constructor TPurchaseOrder.Create;
begin
  FProducts := TList<IProduct<IPurchaseOrder>>.Create;
end;

destructor TPurchaseOrder.Destroy;
begin
  FreeAndNil(FProducts);
  inherited;
end;

function TPurchaseOrder.GetTitle: string;
begin
  Result := FTitle;
end;

class function TPurchaseOrder.New: IPurchaseOrder;
begin
  Result := Self.Create;
end;

function TPurchaseOrder.Product: IProduct<IPurchaseOrder>;
begin
  FProducts.Add(TProduct.New(Self));
  Result := FProducts[Pred(FProducts.Count)];
end;

function TPurchaseOrder.SetTitle(const Value : string) : IPurchaseOrder;
begin
  Result := Self;
  FTitle := Value;
end;

{ TProduct }

constructor TProduct.Create(AParent: IPurchaseOrder);
begin
  FParent := AParent;
end;

function TProduct.GetParent: IPurchaseOrder;
begin
  Result := FParent;
end;

class function TProduct.New(AParent: IPurchaseOrder): IProduct<IPurchaseOrder>;
begin
  Result := Self.Create(AParent);
end;

function TProduct.Sell: IProduct<IPurchaseOrder>;
begin
  Result := Self;
end;

end.
