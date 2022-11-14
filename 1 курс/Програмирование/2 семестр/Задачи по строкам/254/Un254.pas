unit Un254;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Uz254, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextFile1: TMenuItem;
    OpenFile1: TMenuItem;
    CalculatePosled1: TMenuItem;
    Calculate1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    procedure OpenFile1Click(Sender: TObject);
    procedure Calculate1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   s:mass;
   i,k,n:integer;
   ftxt: TextFile;
   t:string;
implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
   t:= OpenDialog1.FileName;
   AssignFile(ftxt,t);
   Append(ftxt);
  end;
end;


procedure TForm1.Calculate1Click(Sender: TObject);
var
s: string;
begin

s:= InputBox('ֲגוהטעו סטלגמכמגû', 'ֲגמה', '');
Calculate_Posled (s,ftxt);
end;


procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

end.
