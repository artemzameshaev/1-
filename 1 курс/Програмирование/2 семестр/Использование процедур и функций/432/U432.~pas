unit U432;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Uz432;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextfile1: TMenuItem;
    OpenFile1: TMenuItem;
    CalculateP1: TMenuItem;
    Cal1: TMenuItem;
    VvodP1: TMenuItem;
    Vvod1: TMenuItem;
    PrintP1: TMenuItem;
    Print1: TMenuItem;
    CloseFile1: TMenuItem;
    CLose1: TMenuItem;
    procedure OpenFile1Click(Sender: TObject);
    procedure Cal1Click(Sender: TObject);
    procedure Vvod1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   ftxt:TextFile;
   x,i:byte;
   a,m:mass;
implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
var
t:string;
begin
 if OpenDialog1.Execute then
 begin
 t:= OpenDialog1.FileName;
 AssignFile (ftxt,t);
 append (ftxt);
 end;
end;


procedure TForm1.Cal1Click(Sender: TObject);
begin
P_Calculate(x,m);
end;


procedure TForm1.Vvod1Click(Sender: TObject);
begin
Vvod_Kf (a,ftxt);
writeln(ftxt,'Введите ',n+1,' коэффициентов многочлена:');
a[i]:= InputBox ('Введите коэффициентов многочлена ', 'Ввод', ' ');
write(ftxt,'a[',i,']=');
end;


procedure TForm1.Print1Click(Sender: TObject);
begin
Print_P (a,ftxt);
end;

end.
