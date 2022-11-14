program P442;

uses
  Forms,
  U442 in 'U442.pas' {Form1},
  Uz442 in 'Uz442.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
