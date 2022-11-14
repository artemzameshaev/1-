var 
  r1, r2, r3, R: real;
  ftxt:text;
begin
  assign (ftxt,'z9.txt');
  append (ftxt);
  writeln (ftxt,'');
  read(r1, r2, r3);
  writeln(ftxt, 'r1=',r1, ' r2=',r2, ' r3=',r3);
  R := (r1 * r2 * r3)/(r1 * r2 + r2 * r3 + r3 * r1);
  writeln(ftxt,'R = ', R:1:1);
  close (ftxt);
end.