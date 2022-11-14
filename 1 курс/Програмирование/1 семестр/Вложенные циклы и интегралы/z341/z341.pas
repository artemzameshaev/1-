uses un341;

type 
   mass = array[1..n] of integer;
var a:mass;
   i,j,x1,x2,x3,x4,mn,mx:integer;
   ftxt: text;
  
  
 begin
  writeln('Наибольшее значение модуля разности ',x1,' и ',x2,'=',modmax(a, n):3); //вывод
   writeln('Наименьшее значение модуля разности ',x3,' и ',x4,'=',modmin(a, n):3); // вывод
   writeln(ftxt,'Наибольшее значение модуля разности ',x1,' и ',x2,'=',modmax(a, n):3); //вывод
   writeln(ftxt,'Наименьшее значение модуля разности ',x3,' и ',x4,'=',modmin(a, n):3); // вывод
   close (ftxt);
   end.
