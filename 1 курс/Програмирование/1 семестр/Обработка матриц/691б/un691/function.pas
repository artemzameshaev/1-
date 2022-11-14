uses un691;

var
  n: integer; //реальаный размер матрицы
  a: massA;
  b: matrB;
  ftxt: text;
  t: string;

begin
  t := 'z691.txt';
  OpenTextFile(ftxt, t);// открытие текст файла t
  
  write('Введите реальный размер матрицы  ');
  read(n);
  
  zapMassA(a, n*n);
   writeln(f, 'массив');
  vivod_Mass(a, n*n, ftxt);
  
  writeln(ftxt, 'Матрица сверху вниз, справа налево');
  matr1(a, n); // процедура расчета матрицы
  vivodMatr1(a, n); //процедура вывода матрицы
  
  writeln(ftxt);
  close(ftxt);
end.