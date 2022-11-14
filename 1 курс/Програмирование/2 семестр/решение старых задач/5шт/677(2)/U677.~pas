unit U677;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uz677, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextFile1: TMenuItem;
    Openfile1: TMenuItem;
    ZapMatrA1: TMenuItem;
    ZapA1: TMenuItem;
    CalElelmmatrB1: TMenuItem;
    CalMatrB1: TMenuItem;
    CalMatrB2: TMenuItem;
    Calculate1: TMenuItem;
    PrintMatrAB1: TMenuItem;
    Print1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    Label1: TLabel;
    Edit_n: TEdit;
    procedure Openfile1Click(Sender: TObject);
    procedure ZapA1Click(Sender: TObject);
    procedure CalMatrB1Click(Sender: TObject);
    procedure Calculate1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b:matr;
  n:integer;
  ftxt:TextFile;
  t: string;


implementation

{$R *.dfm}

procedure TForm1.Openfile1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
t:= OpenDialog1.FileName;
AssignFile(ftxt,t);
append (ftxt);
  end;
end;

procedure TForm1.ZapA1Click(Sender: TObject);
var
i,j:integer;
begin
  n:= StrToInt (Edit_n.Text);
randomize;
  for i := 1 to n do
    for j := 1 to n do
      a[i, j] := random(10);
end;

procedure TForm1.CalMatrB1Click(Sender: TObject);
var
  sum: real;
  k,l,i,j:integer;
  matr1:real;
begin
 sum := 0; //обнуляем сумму
  if i = j then
  matr1:= a[i, j]
  else if i < j then
  begin
    for k := i to j do //обход матрицы поэлементно
      for l := i to j do // ограниченная i,j
        sum := sum + a[k, l]; // сумма элементов в области
    matr1 := sum;
  end
  else
  begin
    for k := j to i do
      for l := j to i do
        sum := sum + a[k, l]; //расчет суммы
    matr1 := sum;
  end;
end;

procedure TForm1.Calculate1Click(Sender: TObject);
var
i,j:integer;
begin
  n:= StrToInt (Edit_n.Text);
for i := 1 to n do // обход строк матрици В
    for j := 1 to n do //присвоить к каждому элементу матрицы В строки i

      b[i, j] := matr1(a, i, j);
end;

procedure TForm1.Print1Click(Sender: TObject);
var
i,j:integer;
begin
  n:= StrToInt (Edit_n.Text);
for i := 1 to n do

  begin
    for j := 1 to n do
      write(ftxt, a[i, j]:4, ' ');
    writeln(ftxt, ' ');
  end;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;


end.
