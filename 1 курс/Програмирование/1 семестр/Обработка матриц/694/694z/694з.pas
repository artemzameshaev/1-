uses un694;
var
  n:integer;
  a:matr;
  ftxt:text;
  t:string;
  
begin
  t := ('z694z');
  OpenTextFile(ftxt, t);// открытие текст файла t {фактические парам ftxt, t}
  
  writeln(ftxt,'Введите n ');
  readln(n);
  writeln (ftxt, n);
  Zap_Matr(a, n);
  
  writeln (ftxt,'Матрица ');
  Print_matr(a, n,ftxt);
  writeln(ftxt);
  close(ftxt);
end.