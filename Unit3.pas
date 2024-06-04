unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    e1: TEdit;
    Label1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    edt2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
Datamodule4.Zkategori.SQL.Clear;
Datamodule4.Zkategori.SQL.Add('insert into kategori values(null,"'+e1.Text+'")');
Datamodule4.Zkategori.ExecSQL;

Datamodule4.Zkategori.SQL.Clear;
Datamodule4.Zkategori.SQL.Add('select * from kategori');
Datamodule4.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan!');

end;

procedure TForm3.btn2Click(Sender: TObject);
begin
Datamodule4.Zkategori.SQL.Clear;
Datamodule4.Zkategori.SQL.Add('update kategori set name="'+e1.Text+'" where id = "'+a+'"');
Datamodule4.Zkategori.ExecSQL;

Datamodule4.Zkategori.SQL.Clear;
Datamodule4.Zkategori.SQL.Add('select * from kategori');
Datamodule4.Zkategori.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
e1.Text:= DataModule4.Zkategori.Fields[1].AsString;
a:= DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
Datamodule4.Zkategori.SQL.Clear;
Datamodule4.Zkategori.SQL.Add('delete from kategori where id = "'+a+'"');
Datamodule4.Zkategori.ExecSQL;

Datamodule4.Zkategori.SQL.Clear;
Datamodule4.Zkategori.SQL.Add('select * from kategori');
Datamodule4.Zkategori.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

end.
