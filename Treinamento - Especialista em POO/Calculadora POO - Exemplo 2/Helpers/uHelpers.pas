unit uHelpers;

interface

uses
  Vcl.Controls;

type
  TCaptionHelper = record helper for TCaption
    function ToDoubleHelper: Double;
  end;

implementation

uses
  System.SysUtils;

{ TCaptionHelper }

function TCaptionHelper.ToDoubleHelper: Double;
begin
  Result := StrToFloatDef(Self, 0);
end;

end.
