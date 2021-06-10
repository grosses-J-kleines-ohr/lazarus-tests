unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, dbf, PQConnection, SQLDB, Forms, Controls, Graphics,
  Dialogs, DBGrids, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PQConnection1: TPQConnection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure DBGrid1PrepareCanvas(Sender: TObject; DataCol: integer;
      Column: TColumn; AState: TGridDrawState);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.DBGrid1PrepareCanvas(Sender: TObject; DataCol: integer;
  Column: TColumn; AState: TGridDrawState);
var
  ts: TTextStyle;
begin
  ts := DBGrid1.Canvas.TextStyle;
  ts.SingleLine := False;
  ts.Wordbreak := True;
  DBGrid1.Canvas.TextStyle := ts;

  if Column.Field.AsString = 'Hallo du da' then
    (Sender as TDBGrid).Canvas.Brush.Color := clGreen;

end;

end.

