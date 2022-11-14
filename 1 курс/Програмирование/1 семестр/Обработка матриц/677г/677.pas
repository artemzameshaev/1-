const
 n=3;
 type
 matr = array [1..n,1..n] of integer;
var
  sum,i,j, k, l :integer;
  a,b: matr;
  ftxt: text;
  t:string;
 

begin
 randomize;
 for i:=1 to n do
begin
  for j:=1 to n do
begin
  a[i,j]:=random(10)+1; //Задаем элементу исх. матрицы случайное число в диапазоне [1..10]
  write(a[i,j],' '); //вывод числа
end;
  writeln;
end;
  readln;
  for i:=1 to n do
  for j:=1 to n do
begin
  sum:=0;
  for k:=1 to i do
  for l:=j to n do
  sum:=sum+a[k,l];
  b[i,j]:=sum;
end;
  writeln('');
  for i:=1 to n do
begin
  for j:=1 to n do
  write(b[i,j]:4);
  writeln;
end;
end.