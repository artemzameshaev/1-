var
 a,b,c,d : real;
 ftxt:text;
begin
 assign (ftxt,'z55.txt');
 append (ftxt);
 writeln (ftxt, '');
 writeln (ftxt, ' Введите стороны прямоугольника a,b и c,d ');
 readln(a, b, c, d);
 writeln(ftxt,'a=', a, ' b=', b, ' c=', c, ' d=', d);
  if (a <= c) and (b <= d) or (a <= d) and (b <= c) then 
 writeln(ftxt, 'Yes')
 else 
 writeln(ftxt, 'No');
 close (ftxt);
end.