unit Un2694;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uz2694, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenTexFile1: TMenuItem;
    Openfile1: TMenuItem;
    Zap1: TMenuItem;
    VivodMatr1: TMenuItem;
    Vivod1: TMenuItem;
    CloseextFile1: TMenuItem;
    Close1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Edit_n: TEdit;
    Label1: TLabel;
    procedure Openfile1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Zap1Click(Sender: TObject);
    procedure Vivod1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: matr;
  n:integer;
  ftxt: TextFile;

implementation

{$R *.dfm}



procedure TForm1.Openfile1Click(Sender: TObject);
var
t:string;
begin
 if OpenDialog1.Execute then
 begin
 t:= OpenDialog1.FileName;
 {else  }
 assignFile (ftxt,t);
 append(ftxt);
 end;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

procedure TForm1.Zap1Click(Sender: TObject);
var
  i: integer;
begin
n:= StrToint(Edit_n.Text);
 {for i := 1 to n do
    a[i, i] := n - i + 1; }
    Zap_matr(a,n);
end;

procedure TForm1.Vivod1Click(Sender: TObject);
var
  i, j: integer;
begin
 n:= StrToint(Edit_n.Text);
  {for i := 1 to n do //??????? ?????
    for j := 1 to n do //??????? ????????
      if j = n then
      begin
        writeln(ftxt, a[i, j]:3);  //????? ? ????? ????
      end
       else
      begin
        write(ftxt, a[i, j]:3); //????? ? ????? ????
      end; }
      print_matr_file(a,n,ftxt);
end;

end.
