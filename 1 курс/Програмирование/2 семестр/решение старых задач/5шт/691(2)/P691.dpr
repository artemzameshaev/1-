program P691;

uses
  Forms,
  U691 in 'U691.pas' {Form1},
  Uz691 in 'Uz691.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
