unit U466;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    OpenDialogFile1: TMenuItem;
    OpenFile1: TMenuItem;
    Zamenasimvalov1: TMenuItem;
    Zamenit1: TMenuItem;
    CloseFile1: TMenuItem;
    Close1: TMenuItem;
    Edit_a: TEdit;
    Label1: TLabel;
    procedure OpenFile1Click(Sender: TObject);
    procedure Zamenit1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c:string[255];
  n,i:integer;
  t: string;
  ftxt:textFile;
implementation

{$R *.dfm}

procedure TForm1.OpenFile1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
 begin
 t:= OpenDialog1.FileName ;
 AssignFile (ftxt,t);
 append(ftxt); 


 end;

end;

procedure TForm1.Zamenit1Click(Sender: TObject);

begin

 Write (ftxt,'������� 1-�� � 0-��');
 readln(a); //���� 0-� � 1-�
 writeln (ftxt,a); //����� �
 n:=Length(a); //����� ������ �������� (�)
  For i := 1 to n do
 begin
  b:=Copy(a,i,1); //����������� ����� ��������
   if b='1' // ��������� �������� b �������� 1
  then b:='0' // ���� 1 �� 0
 else b:='1'; //������ ������ 0 ����� 1
 Insert(b,c,i); //������� �������� ������ ������� � ��������� �������
 end;
writeln (ftxt,'������');
writeln(ftxt,c); //����� ����������� ����������
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
CloseFile (ftxt);
end;

end.
