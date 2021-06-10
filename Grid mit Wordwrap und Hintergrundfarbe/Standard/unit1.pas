unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, dbf, PQConnection, SQLDB, Forms, Controls, Graphics,
  Dialogs, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PQConnection1: TPQConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  SQLQuery1.SQL.Text := 'select * from books';
end;

end.

