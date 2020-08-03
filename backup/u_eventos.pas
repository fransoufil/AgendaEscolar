unit u_eventos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, ExtDlgs, EditBtn,
  Calendar, DBGrids, StdCtrls, DateTimePicker;

type

  { TfrmEventos }

  TfrmEventos = class(TForm)
    btnVoltar: TButton;
    Calendar1: TCalendar;
    dsEventos: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnVoltarClick(Sender: TObject);
  private

  public

  end;

var
  frmEventos: TfrmEventos;

implementation

{$R *.lfm}

{ TfrmEventos }

procedure TfrmEventos.btnVoltarClick(Sender: TObject);
begin
 Self.Close;
end;

end.

