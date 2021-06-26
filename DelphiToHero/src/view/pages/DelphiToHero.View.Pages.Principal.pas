unit DelphiToHero.View.Pages.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Router4D.Interfaces;

type
  TfrmPagePrincipal = class(TForm, IRouter4DComponent)
    pnlClient: TPanel;
    lbTitle: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    procedure ApplyStyle;
  public
    function Render : TForm;
    procedure UnRender;
  end;

var
  frmPagePrincipal: TfrmPagePrincipal;

implementation

{$R *.dfm}

uses DelphiToHero.View.Styles.Colors;

{ TfrmPagePrincipal }

procedure TfrmPagePrincipal.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TfrmPagePrincipal.Render: TForm;
begin
  Result := Self;
end;

procedure TfrmPagePrincipal.UnRender;
begin

end;

procedure TfrmPagePrincipal.ApplyStyle;
begin
  TConfigStyles.InicializarTPanel(pnlClient, TConfigStyles.COLOR_BACKGROUND);
end;

end.
