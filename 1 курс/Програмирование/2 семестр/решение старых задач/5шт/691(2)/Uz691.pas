unit Uz691;

interface

 type
  MassA = array[1..1024] of real;
  matrB = array[1..32, 1..32] of real;
  {запрлнение массиваА}
  procedure zapMassA(var a: massA; n: integer);
  {вывод массива  в текст файл}
  procedure vivod_Mass(var a: massA; k: integer; var ftxt: TextFile);
  {процедура расчета матрицы}
  procedure matr1(var a: massA; var b: matrB; n: integer);//
  {процедура вывода матр1}
  procedure vivodMatr1(var a: massA; var b: matrB; n: integer; var ftxt:TextFile);
  {вывод в текст файл}
  procedure OpenTextFile(var ftxt: TextFile; t: string);


implementation


 {запрлнение массиваА}
procedure zapMassA(var a: massA; n: integer);
var
i:integer;
begin
  randomize;
  for i := 1 to n do
    a[i] := 10 * random;
end;

{вывод массива  в текст файл}
procedure vivod_Mass(var a: massA; k: integer; var ftxt: TextFile);
 var i:integer;
begin
  writeln(ftxt, 'массив');
   for i := 1 to k  do
    write(ftxt, a[i]:7:2);
  writeln(ftxt, '');
end;

 {процедура расчета матрицы}
procedure matr1(var a: massA; var b: matrB; n: integer);    //
var
  k: integer;
  i,j:integer;
begin
k := 1;
  for i := 1 to n do
    if odd(i) then
      for  j := 1 to n do
      begin
        b[i, j] := a[k];
        k := k + 1;
      end
    else
      for j := n downto 1 do
      begin
        b[i, j] := a[k];
        k := k + 1;
      end;
end;


  {процедура вывода матр1}
procedure vivodMatr1(var a: massA; var b: matrB; n: integer; var ftxt:TextFile);
var
i,j:integer;
begin
writeln(ftxt,'Матрица сверху вниз, справа налево');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(ftxt, b[i, j]:5:2);
    writeln(ftxt);
  end;
end;

{вывод в текст файл}
procedure OpenTextFile(var ftxt: text; t: string);
begin
  assign(ftxt, t);
  append(ftxt);
end;

end.
