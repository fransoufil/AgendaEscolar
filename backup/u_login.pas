unit u_login;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons,u_eventos;

type

  { TfrmLogin }

  TfrmLogin = class(TForm)
    BitBtn1: TBitBtn;
    txtUsuario: TEdit;
    txtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private

  public

  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.lfm}

{ TfrmLogin }

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin
 frmEventos.Free;
 application.CreateForm(TfrmEventos, frmEventos);
 frmEventos.Show;
 frmEventos.lblUsuario.Caption:= txtUsuario.Text;
end;

procedure TfrmLogin.BitBtn1Click(Sender: TObject);
begin
  application.Terminate;
end;

end.

