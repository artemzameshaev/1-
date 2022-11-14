unit U694z;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Uz694z, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextFile1: TMenuItem;
    OpenFile1: TMenuItem;
    ZapMatr1: TMenuItem;
    Zap1: TMenuItem;
    P1: TMenuItem;
    Print1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    Label1: TLabel;
    Edit_n: TEdit;
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
  a:matr;
  i,j:integer;
  n:integer;
  ftxt: TextFile;
  t:string;

implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
 begin
 t:= OpenDialog1.FileName;
 assignFile(ftxt,t);
 append(ftxt);
 end;
end;

procedure TForm1.Zap1Click(Sender: TObject);
var
 l,d, k: integer;
begin
   n:= StrToInt(Edit_n.Text);
 {for i := 1 to n div 2 do
    for j := 1 to n do
    begin
      if (i = 1) then a[i, j] := 1;
      if (j < i) then a[i, j] := 0
      else
      if (j > n + 1 - i) then a[i, j] := 0
      else a[i, j] := 1;

      if odd(n) then
      begin
        k := n div 2 + 1; }
        {j:=0;}
        {for  l := 1 to n do
          if (k <> l) then a[k, l] := 0
          else a[k, l] := 1
      end;

      if odd(n) then k := n div 2 + 2
      else k := n div 2 + 1;
      for l := k to n do
        for d := 1 to n do
        begin
          if (d < n + 1 - l) then a[l, d] := 0
          else
          if (d > l) then a[l, d] := 0
          else a[l, d] := 1;
        end;
    end; }
    Zap_Matr(a,n);
end;

procedure TForm1.Print1Click(Sender: TObject);
begin
   n:= StrToInt(Edit_n.Text);
 {for i := 1 to n do //ןונובמנ סענמך
    for j := 1 to n do //ןונובמנ סעמכבצמג
      if j = n then
      begin
        writeln(ftxt, a[i, j]:3);

      end
       else
      begin
        write(ftxt, a[i, j]:3);

      end; }
      Print_matr(a,n,ftxt);
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

end.
