program P466;

uses
  Forms,
  U466 in 'U466.pas' {Form1},
  Uz466 in 'Uz466.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
