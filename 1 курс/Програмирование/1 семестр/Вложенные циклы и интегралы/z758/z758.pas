{$include 758modul.pas}
var
  x, eps: real;
  ftxt: text;
  t: string;

begin
  t := 'z758.txt';
  OpenTextFile(ftxt, t);
  readln(x); 
  read(eps);
  writeln(ftxt, 'При x = ', x, ' eps = ', eps);
  writeln(ftxt, Sum(x, eps):8:4);
  readln;
  writeln(ftxt);
  close(ftxt);
end.