type
   mass= array [1..100] of real;
var 
   i,n:integer;
   mini,minqi:real;
   a: mass;
   ftxt: text;
begin
   assign (ftxt,'z201z.txt'); 
   append (ftxt);
   writeln (ftxt, ''); 
      readln(n);    {элемент в массиве}     
   writeln(ftxt,'n = ', n);   //искомый элемент равен

       {ввод массива и вывод в текстовый файл}
for i:=1 to n do
begin
   write('a[',i,']=');   {ввод массива}
   readln(a[i]);
end;
   for i:=1 to n do
begin
   write(ftxt,a[i]: 8:4, '');  
end;
   writeln (ftxt, '');
   mini:=a[1]; // минимальный счет 1 элемента 1 массив
   minqi:=sqr(a[1]); // элемент 1 квадрата массива
   for i:=2 to n do
begin
   if (a[i]< mini) then mini:=a[i];
   if (sqr(a[i])< minqi) then minqi:=sqr(a[i]);
end;
   writeln(ftxt, 'искомая разность равна ',(sqr(mini)-minqi));
   close (ftxt);
end.
