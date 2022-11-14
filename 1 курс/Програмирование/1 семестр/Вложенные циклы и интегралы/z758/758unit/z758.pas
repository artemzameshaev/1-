uses un758;
var
  x, eps: real;
  ftxt: text;
  t: string;

begin
  t := 'z758.txt';
  OpenTextFile(ftxt, t);
  writeln('введите значения');
  writeln(ftxt,'введите значения');
  readln(x); 
  read(eps);
  writeln('При x = ', x, ' eps = ', eps);
  writeln(ftxt, 'При x = ', x, ' eps = ', eps);
  writeln(ftxt, Sum(x, eps):8:4);
  writeln(Sum(x, eps):8:4);
  readln;
  writeln(ftxt);
  close(ftxt);
end.