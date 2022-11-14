uses un694;
var
  n:integer;
  a:matr;
  ftxt:text;
  t:string; 
begin
  t := ('z694');
  OpenTextFile(ftxt, t);// открытие текст файла t
  
  writeln('Введите размер матрицы n');
  writeln(ftxt,'Введите размер матрицы n ');
  readln(n);
  writeln (ftxt, n); //вывод в текст файл введеное n
  Zap_matr(a, n);
  
  writeln ('Полученная матрица');
  writeln (ftxt,'Полученная матрица ');
  print_matr(a, n); //вывод матрицы 
  print_matr_file(a, n, ftxt);
  writeln(ftxt);
  close(ftxt);
end.