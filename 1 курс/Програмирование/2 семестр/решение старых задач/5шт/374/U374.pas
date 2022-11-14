unit U374;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Uz374, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextFile1: TMenuItem;
    OpenFile1: TMenuItem;
    ZapMatr1: TMenuItem;
    Zap1: TMenuItem;
    PrintMatr1: TMenuItem;
    Print1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    Edit_n: TEdit;
    Edit_m: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure OpenFile1Click(Sender: TObject);
    procedure Zap1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n,m,k:integer;
  c:matr;
  t:string;
  ftxt:TextFile;

implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
  t:= OpenDialog1.FileName;
  AssignFile (ftxt,t);
  Append (ftxt);
  end;
end;

procedure TForm1.Zap1Click(Sender: TObject);
var
i,j:integer;
begin
 n:= StrToInt(Edit_n.Text);
 m:= StrToInt(Edit_m.Text);
{for i:=1 to n do
for j:=1 to m do
c[i,j]:=  sin (i + j/2);
random(10);}
Zap_matr(c,n,m);
end;

procedure TForm1.Print1Click(Sender: TObject);
var
i,j:integer;
begin
  n:= StrToInt(Edit_n.Text);
  m:= StrToInt(Edit_m.Text);
 {k:=0;
for i:=1 to n do
 begin
for j:=1 to m do
  begin
write(ftxt, c[i,j]:5:2);
if c[i,j]<0 then k:=k+1;
  end;
writeln(ftxt);
 end;
writeln(ftxt,'Положительных элементов  ',k); }
Print_Matr( c,ftxt,n,m);
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

end.
