program P374;

uses
  Forms,
  U374 in 'U374.pas' {Form1},
  Uz374 in 'Uz374.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
