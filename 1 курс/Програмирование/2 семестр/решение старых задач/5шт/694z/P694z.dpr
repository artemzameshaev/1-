program P694z;

uses
  Forms,
  U694z in 'U694z.pas' {Form1},
  Uz694z in 'Uz694z.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
