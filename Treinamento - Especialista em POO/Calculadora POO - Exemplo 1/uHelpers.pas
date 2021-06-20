unit uHelpers;

interface

uses
  Vcl.Controls, System.MaskUtils;

type
  TCaptionHelper = record helper for TCaption
    function ToDoubleHelper: Double;
  end;

  TMaskedTextHelper = record helper for TMaskedText
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

{ TMaskedTextHelper }

function TMaskedTextHelper.ToDoubleHelper: Double;
begin
  Result := StrToFloatDef(Self, 0);
end;

end.
