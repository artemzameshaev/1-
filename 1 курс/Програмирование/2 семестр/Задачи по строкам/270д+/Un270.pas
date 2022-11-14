unit Un270;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Uz270;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextFile1: TMenuItem;
    OpenFile1: TMenuItem;
    DelSimvol1: TMenuItem;
    Delite1: TMenuItem;
    PrintDelSimvol1: TMenuItem;
    Print1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    procedure OpenFile1Click(Sender: TObject);
    procedure Delite1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   ftxt: TextFile;
   t:string;
   s,s1,s2:string;
   i:byte;

implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
 begin
t:= OpenDialog1.FileName;
AssignFile (ftxt,t);
append (ftxt);
 end;
end;

procedure TForm1.Delite1Click(Sender: TObject);
begin
  s:= InputBox ('Введите строку хотябы с 1 пробелом ', ' Ввод ', '');
  writeln (ftxt,'Введенные символы   ',s);
  if pos(' ',s) in [0,1] then ShowMessage('Строка введена неверно! Повторите ввод.');
{ repeat
if pos(' ',s) in [0,1] then ShowMessage('Строка введена неверно! Повторите ввод.');
until not(pos(' ',s) in [0,1]);
s1:=copy(s,1,pos(' ',s)-1);
s2:='';
i:=1;
while i<=length(s) do
if(s[i]='0')and (s[i+1] <> '.') then i:=i+1
else
 begin
  s2:=s2+s[i];
  i:=i+1;
 end;   }
  Delete_Sim_zero (s,s1,s2,i);
end;

procedure TForm1.Print1Click(Sender: TObject);
begin
 {write(ftxt,s2); }
   Print_Del_Sim (ftxt,s2);
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

end.
