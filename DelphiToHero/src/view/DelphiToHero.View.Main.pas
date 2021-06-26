unit DelphiToHero.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmMain = class(TForm)
    pnlAllClient: TPanel;
    pnlLeft: TPanel;
    pnlClient: TPanel;
    pnlTop: TPanel;
    pnlLogo: TPanel;
    btnPrincipal: TSpeedButton;
    btnUsuarios: TSpeedButton;
    pnlPages: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnPrincipalClick(Sender: TObject);
  private
    procedure ApplyStyle;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses DelphiToHero.View.Styles.Colors, Router4D,
  DelphiToHero.View.Pages.Principal;

procedure TfrmMain.btnPrincipalClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TfrmMain.btnUsuariosClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ApplyStyle;
  TRouter4D.Render<TfrmPagePrincipal>.SetElement(pnlPages, pnlAllClient);
end;

procedure TfrmMain.ApplyStyle;
begin
  TConfigStyles.InicializarTPanel(pnlAllClient, TConfigStyles.COLOR_BACKGROUND);
  TConfigStyles.InicializarTPanel(pnlTop, TConfigStyles.COLOR_BACKGROUND_TOP);
  TConfigStyles.InicializarTPanel(pnlLogo, TConfigStyles.COLOR_BACKGROUND_DESTAQUE);
  TConfigStyles.InicializarTPanel(pnlLeft, TConfigStyles.COLOR_BACKGROUND_MENU);
  TConfigStyles.InicializarTPanel(pnlClient, TConfigStyles.COLOR_BACKGROUND);
  TConfigStyles.InicializarTPanel(pnlPages, TConfigStyles.COLOR_BACKGROUND);

  Self.Font.Color := TConfigStyles.FONT_COLOR;
  Self.Font.Size := TConfigStyles.FONT_H6;
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
