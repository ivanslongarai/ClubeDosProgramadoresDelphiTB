unit DelphiToHero.View.Styles.Colors;

interface

uses
  System.UITypes, Vcl.ExtCtrls;

type
  TConfigStyles = class
    class function COLOR_WHITE: TColor;
    class function COLOR_BACKGROUND: TColor;
    class function COLOR_BACKGROUND_TOP: TColor;
    class function COLOR_BACKGROUND_TOP_SUBMENU: TColor;
    class function COLOR_BACKGROUND_MENU: TColor;
    class function COLOR_BACKGROUND_DESTAQUE: TColor;
    class function COLOR_DANGER: TColor;
    class function FONT_COLOR: TColor;
    class function FONT_COLOR2: TColor;
    class function FONT_COLOR3: TColor;
    class function FONT_COLOR4: TColor;
    class function FONT_H1: Integer;
    class function FONT_H2: Integer;
    class function FONT_H3: Integer;
    class function FONT_H4: Integer;
    class function FONT_H5: Integer;
    class function FONT_H6: Integer;
    class function FONT_H7: Integer;
    class function FONT_H8: Integer;
    class function FONT_H9: Integer;
    class function COLOR_C1: TColor;
    class function COLOR_C2: TColor;
    class procedure InicializarTPanel(APanel : TPanel; AColor : TColor);
  end;

implementation

uses
  Vcl.Controls;

{ TConfigColors }

class function TConfigStyles.COLOR_BACKGROUND: TColor;
begin
  Result := $00FFFFFF;
end;

class function TConfigStyles.COLOR_BACKGROUND_DESTAQUE: TColor;
begin
  Result := $0084C400;
end;

class function TConfigStyles.COLOR_BACKGROUND_MENU: TColor;
begin
  Result := $00C4C4C4;
end;

class function TConfigStyles.COLOR_BACKGROUND_TOP: TColor;
begin
  Result := $00A4584C;
end;

class function TConfigStyles.COLOR_BACKGROUND_TOP_SUBMENU: TColor;
begin
  Result := $00FCFAF9;
end;

class function TConfigStyles.COLOR_C1: TColor;
begin
  Result := $00E1E1E1;
end;

class function TConfigStyles.COLOR_C2: TColor;
begin
  Result := $00E3DAC1;
end;

class function TConfigStyles.COLOR_DANGER: TColor;
begin
  Result := $000000FF;
end;

class function TConfigStyles.COLOR_WHITE: TColor;
begin
  Result := $00FFFFFF;
end;

class function TConfigStyles.FONT_COLOR: TColor;
begin
  Result := $00322F2D;
end;

class function TConfigStyles.FONT_COLOR2: TColor;
begin
  Result := $00AC9F8F;
end;

class function TConfigStyles.FONT_COLOR3: TColor;
begin
  Result := $0084563E;
end;

class function TConfigStyles.FONT_COLOR4: TColor;
begin
  Result := $00B6A6A0;
end;

class function TConfigStyles.FONT_H1: Integer;
begin
  Result := 20;
end;

class function TConfigStyles.FONT_H2: Integer;
begin
  Result := 18;
end;

class function TConfigStyles.FONT_H3: Integer;
begin
  Result := 16;
end;

class function TConfigStyles.FONT_H4: Integer;
begin
  Result := 14;
end;

class function TConfigStyles.FONT_H5: Integer;
begin
  Result := 12;
end;

class function TConfigStyles.FONT_H6: Integer;
begin
  Result := 10;
end;

class function TConfigStyles.FONT_H7: Integer;
begin
  Result := 9;
end;

class function TConfigStyles.FONT_H8: Integer;
begin
  Result := 8;
end;

class function TConfigStyles.FONT_H9: Integer;
begin
  Result := 6;
end;

class procedure TConfigStyles.InicializarTPanel(APanel : TPanel; AColor : TColor);
begin
  APanel.ParentColor := False;
  APanel.BevelOuter := bvNone;
  APanel.Color := AColor;
end;

end.
