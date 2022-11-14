var
  a, b, x, y, z: real;
  ftxt:text;
begin
  assign (ftxt, 'z11.txt');
  append (ftxt);
  readln(x, y, z);
  writeln (ftxt, 'x=',x, ' y=',y, ' z=',z);
 a := (3 + exp(y - 1) ) / (1 + sqr(x) * abs(y - sin(z) / cos(z)));
 b := 1 + abs(y - x) + (sqr(y - x) / 2) + (exp(3 * ln(abs(y - x))) / 3);
  writeln (ftxt,'вычисление равно');
  Writeln(ftxt,'a = ', a:0:2);
  Writeln(ftxt,'b = ', b:0:2);
  close(ftxt);
end.