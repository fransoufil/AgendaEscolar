unit u_login;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons,u_eventos;

type

  { TfrmLogin }

  TfrmLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
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
end;

end.

