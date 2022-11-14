program PBagaj;

uses
  Forms,
  UnBagaj in 'UnBagaj.pas' {Form1},
  UzBagaj in 'UzBagaj.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
