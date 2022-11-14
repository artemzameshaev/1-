uses un677;


var
  a, b: matr;
  ftxt: text;
  t: string;



begin
  t := 'z677.txt';
  OpenTextFile(ftxt, t);// открытие текст файла t
  
  zapMatrA(a, n);{заполнение рандомными числами матрицы А}
  writeln(ftxt, 'матрица А');
  vivodMatr(a, n, ftxt);//вывовод матрицы А
  
  matrB(b, a, n);//заполнение матрицы В
  writeln;
  writeln(ftxt, 'матрица B');
  vivodMatr(b, n, ftxt);// вывод матрицы В
  
  writeln(ftxt);
  close(ftxt);
end.