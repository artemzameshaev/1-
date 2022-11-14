var
  a, f : real;
  ftxt:text;
begin
 assign (ftxt,'z58.txt');
 append (ftxt); 

 writeln (ftxt, '');
  write('a = '); 
  readln(a);

  writeln (ftxt, a);

   if (a <= 0) then 
    f := abs(a + 1)
   else 
    f := abs(a - 1);
  writeln(ftxt,'f = ', f:5:2);
  close(ftxt);
end.