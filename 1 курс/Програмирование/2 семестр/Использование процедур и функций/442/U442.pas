unit U442;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Uz442;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenTextFile1: TMenuItem;
    OpeFile1: TMenuItem;
    SearchPerimeter1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    Search1: TMenuItem;
    procedure OpeFile1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Search1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ftxt: TextFile;

    x,y:mass;
    i:integer;
    s:real;
    x1,y1,x2,y2:real;

implementation

{$R *.dfm}

procedure TForm1.OpeFile1Click(Sender: TObject);
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

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile(ftxt);
end;



procedure TForm1.Search1Click(Sender: TObject);
begin
Rend_Points (x,y,n);
end;



end.
