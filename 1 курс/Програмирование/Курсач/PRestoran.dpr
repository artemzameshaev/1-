program PRestoran;

uses
  Forms,
  UnBagaj in '..\����� ������ (backup)\UnBagaj.pas' {Form1},
  UzBagaj in '..\����� ������ (backup)\UzBagaj.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
