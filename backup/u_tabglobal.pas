unit u_tabglobal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset;

type

  { Ttabglobal }

  Ttabglobal = class(TDataModule)
    conexao: TZConnection;
    qTodos: TZQuery;
  private

  public

  end;

var
  tabglobal: Ttabglobal;

implementation

{$R *.lfm}

end.

