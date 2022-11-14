program P254;

uses
  Forms,
  Un254 in 'Un254.pas' {Form1},
  Uz254 in 'Uz254.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
