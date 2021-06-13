unit uClassOperator;

interface

type
  //Those features doesn't work with Object Class if it's running on Windows S.O
  TClassOperatorClass = record
    Value : Integer;
    Name : string;
    class operator Add (ATestA, ATestB : TClassOperatorClass) : TClassOperatorClass;
    class operator Implicit (AValue : string) : TClassOperatorClass;
    class operator Implicit (AValue : Integer) : TClassOperatorClass;
    class operator Positive(ATest : TClassOperatorClass) : TClassOperatorClass;
    class operator Negative(ATest : TClassOperatorClass) : TClassOperatorClass;
    class operator Inc(ATest : TClassOperatorClass) : TClassOperatorClass;
    class operator Dec(ATest : TClassOperatorClass) : TClassOperatorClass;
    class operator Equal (ATestA, ATestB : TClassOperatorClass) : Boolean;
  end;

implementation

{ TTest }

class operator TClassOperatorClass.Add(ATestA, ATestB: TClassOperatorClass): TClassOperatorClass;
begin
  Result.Value := ATestA.Value + ATestB.Value;
end;

class operator TClassOperatorClass.Implicit(AValue: string): TClassOperatorClass;
begin
  Result.Name := AValue;
end;

class operator TClassOperatorClass.Dec(ATest: TClassOperatorClass): TClassOperatorClass;
begin
  Result := ATest.Value - 10;
end;

class operator TClassOperatorClass.Equal(ATestA, ATestB: TClassOperatorClass): Boolean;
begin
 Result := (ATestA.Value = ATestB.Value) and (ATestA.Name = ATestB.Name);
end;

class operator TClassOperatorClass.Implicit(AValue: Integer): TClassOperatorClass;
begin
  Result.Value := AValue;
end;

class operator TClassOperatorClass.Inc(ATest: TClassOperatorClass): TClassOperatorClass;
begin
  Result := ATest.Value + 10;
end;

class operator TClassOperatorClass.Negative(ATest: TClassOperatorClass): TClassOperatorClass;
begin
  Result := ATest.Value -1;
end;

class operator TClassOperatorClass.Positive(ATest: TClassOperatorClass): TClassOperatorClass;
begin
  Result := ATest.Value + 1;
end;


end.
