unit DelphiToHero.View.Pages.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DelphiToHero.View.Pages.Form.Template,
  Vcl.ExtCtrls, Vcl.Buttons, PngSpeedButton, Vcl.StdCtrls;

type
  TfrmPageUsuarios = class(TfrmTemplate)
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  frmPageUsuarios: TfrmPageUsuarios;

implementation

{$R *.dfm}

procedure TfrmPageUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  lbTittlePage.Caption := 'Página de Usuários';
end;

end.
