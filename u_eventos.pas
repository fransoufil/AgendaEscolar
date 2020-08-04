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
    calendarioData: TCalendar;
    dsEventos: TDataSource;
    DBGrid1: TDBGrid;
    lblUsuario: TLabel;
    lblDataSelecionada: TLabel;
    lblData: TLabel;
    procedure btnVoltarClick(Sender: TObject);
    procedure calendarioDataDayChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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

procedure TfrmEventos.calendarioDataDayChanged(Sender: TObject);
begin
  lblDataSelecionada.Caption:=calendarioData.Date;
end;

procedure TfrmEventos.FormActivate(Sender: TObject);
begin
    lblData.Caption:=FormatDateTime('dd/mm/yyyy', Date);
    lblDataSelecionada.Caption:=calendarioData.Date;
end;

end.

