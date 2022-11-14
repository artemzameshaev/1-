program P677;

uses
  Forms,
  U677 in 'U677.pas' {Form1},
  Uz677 in 'Uz677.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
