var a,b,c,x,y:Real;
ftxt:text;
begin
 assign (ftxt,'z56.txt');
 append (ftxt);
 writeln (ftxt, '');
Writeln(ftxt,'Стороны кирпича:');
  Write(ftxt,'a= '); 
Readln(a);
writeln (ftxt, a);
  Write(ftxt,'b= ');
Readln(b);
writeln (ftxt, b);
  Write(ftxt,'c= ');
Readln(c);
writeln (ftxt, c);
Writeln(ftxt,'Размеры отверстия:');
  Write(ftxt,'x= ');
Readln(x);
writeln (ftxt, x);
  Write(ftxt,'y= ');
Readln(y);
writeln (ftxt, y);
if ((a<=x) and (b<=y)) or
   ((b<=x) and (a<=y)) or
   ((a<=x) and (c<=y)) or
   ((c<=x) and (a<=y)) or
   ((c<=x) and (b<=y)) or
   ((b<=x) and (c<=y)) then 
     Writeln(ftxt,'Кирпич пройдет в отверстие') 
     else
   Writeln(ftxt,'Кирпич не пройдет в отверстие');
   close(ftxt);
end.