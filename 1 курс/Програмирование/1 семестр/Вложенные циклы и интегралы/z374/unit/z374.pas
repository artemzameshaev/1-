uses un374;

var
  n,m,k:integer;
  c:matr;
  t:string;
  ftxt:text;
  
begin
  t := ('z374');
  OpenTextFile(ftxt, t);// открытие текст файла t {фактические парам ftxt, t}
write(ftxt,'Введите размер матрицы ');
write('Введите размер матрицы ');
readln(n,m);
writeln (ftxt, n, m);
writeln(ftxt,'Матрица: ');
writeln('Матрица: ');
Zap_matr(c, n, m); 
Print_Matr(c,ftxt,n,m);
writeln(ftxt,'Положительных элементов  ',k);
close(ftxt);
end.
