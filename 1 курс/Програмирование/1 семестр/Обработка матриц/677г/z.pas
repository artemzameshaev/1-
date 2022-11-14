const
  n = 3;//pазмер матрицы 

type
  matr = array [1..n, 1..n] of real;

var
  a, b: matr;
  ftxt: text;
  t: string;

{заполнение рандомными числами матрицы А}
procedure zapMatrA(var a: matr; n: integer);
begin
  randomize;
  for var i := 1 to n do
    for var j := 1 to n do
      a[i, j] := random(10);
end;

{функция расчета элемента i,j матрицы b}
function matr1(var a: matr; i, j: integer): real;
var
  sum: real;
begin
  sum := 0; //обнуляем сумму 
  if i = j then matr1 := a[i, j]
  else if i < j then
  begin
    for var k := i to j do //обход матрицы поэлементно 
      for var l := i to j do // ограниченная i,j
        sum := sum + a[k, l]; // сумма элементов в области
    matr1 := sum; 
  end
  else
  begin
    for var k := j to i do
      for var l := j to i do
        sum := sum + a[k, l]; //расчет суммы
    matr1 := sum;   
  end;
end;

  {расчет матрицы b}
procedure matrB(var b, a: matr; n: integer);
begin
  for var i := 1 to n do // обход строк матрици В
    for var j := 1 to n do //присвоить к каждому элементу матрицы В строки i
      
      b[i, j] := matr1(a, i, j);
 
end;

 {вывод матрицы в текст файл А В}
procedure vivodMatr(var a: matr; n: integer; f: text);
begin
  for var i := 1 to n do
  
  begin
    for var j := 1 to n do
      write(f, a[i, j]:4, ' ');
    writeln(f, ' ');
  end;
end;


procedure OpenTextFile(var ftxt: text; t: string);
begin
  assign(ftxt, t);
  append(ftxt);
end;

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