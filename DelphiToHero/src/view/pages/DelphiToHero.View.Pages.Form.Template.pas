unit DelphiToHero.View.Pages.Form.Template;


// Utilizado o componente PngSpeedButton, o padrão do delphi está com problemas
// Link: https://github.com/TurboPack/PNGComponents

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, PngSpeedButton, Vcl.Buttons;

type
  TfrmTemplate = class(TForm, IRouter4DComponent)
    pnlClient: TPanel;
    pnlTop: TPanel;
    pnlContent: TPanel;
    pnlCenterOnTop: TPanel;
    lbTittlePage: TLabel;
    btnRelatorios: TPngSpeedButton;
    btnConfiguracoes: TPngSpeedButton;
    btnHistorico: TPngSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    procedure ApplyStyle;
  public
    function Render : TForm;
    procedure UnRender;
  end;

var
  frmTemplate: TfrmTemplate;

implementation

{$R *.dfm}

uses DelphiToHero.View.Styles.Colors;
{ TfrmTemplate }

procedure TfrmTemplate.ApplyStyle;
begin
  TConfigStyles.InicializarTPanel(pnlClient, TConfigStyles.COLOR_BACKGROUND);
  TConfigStyles.InicializarTPanel(pnlTop, TConfigStyles.COLOR_C1);
  TConfigStyles.InicializarTPanel(pnlContent, TConfigStyles.COLOR_BACKGROUND);
  TConfigStyles.InicializarTPanel(pnlCenterOnTop, TConfigStyles.COLOR_C1);
  lbTittlePage.Font.Size := TConfigStyles.FONT_H5;
  lbTittlePage.Font.Color := TConfigStyles.FONT_COLOR3;
  lbTittlePage.Font.Name := 'Segoe UI';
end;

procedure TfrmTemplate.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TfrmTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TfrmTemplate.UnRender;
begin
  //
end;

end.
