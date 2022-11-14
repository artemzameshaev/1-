program PRestoran;

uses
  Forms,
  UnBagaj in '..\прога курсач (backup)\UnBagaj.pas' {Form1},
  UzBagaj in '..\прога курсач (backup)\UzBagaj.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
