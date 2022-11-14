program P432;

uses
  Forms,
  U432 in 'U432.pas' {Form1},
  Uz432 in 'Uz432.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
