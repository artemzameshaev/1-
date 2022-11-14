unit U466;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Uz466;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialogFile1: TMenuItem;
    OpenFile1: TMenuItem;
    ZamenaSimvalov1: TMenuItem;
    Zamenit1: TMenuItem;
    VivodZameni1: TMenuItem;
    Vivod1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure OpenFile1Click(Sender: TObject);
    procedure Zamenit1Click(Sender: TObject);
    procedure Vivod1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   ftxt:TextFile;
   s:string1;
   l:INTEGER;
implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
var
t:string;
begin
if OpenDialog1.Execute then
 begin
 t:= OpenDialog1.FileName;
 AssignFile(ftxt,t);
 append(ftxt);
 end;
end;

procedure TForm1.Zamenit1Click(Sender: TObject);
begin
  s:=InputBox ('ֲגוהטעו סטלגמכû', ' ֲגוהטעו', '');
Zaena_Sivalov (s,l);
end;

procedure TForm1.Vivod1Click(Sender: TObject);
begin
Vivod_Zamen_Sim (s,ftxt);
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;

end.
