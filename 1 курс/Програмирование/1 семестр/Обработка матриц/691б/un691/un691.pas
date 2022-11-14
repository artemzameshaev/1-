unit un691;

interface

type
  MassA = array[1..1024] of real;
  matrB = array[1..32, 1..32] of real;
  {запрлнение массиваА}
procedure zapMassA(var a: massA; n: integer);
{вывод массива  в текст файл}
procedure vivod_Mass(var a: massA; k: integer; var f: text);
{процедура расчета матрицы}
procedure matr1(var a: massA; n: integer);
{процедура вывода матр1}
procedure vivodMatr1(var a: massA; k: integer);
{вывод в текст файл}
procedure OpenTextFile(var ftxt: text; t: string);

implementation

 {запрлнение массиваА}
procedure zapMassA(var a: massA; n: integer);
begin
  randomize;
  for var i := 1 to n do
    a[i] := 10 * random;
end;

{вывод массива  в текст файл}
procedure vivod_Mass(var a: massA; k: integer; var f: text);
 {var i:integer;}
begin
 
  for var i := 1 to k  do
    write(f, a[i]:7:2);
  writeln(f, '');
end;

 {процедура расчета матрицы}
procedure matr1(var a: massA; n: integer);
var
  k: integer;
begin
  k := 1;
  for var i := 1 to n do 
    if odd(i) then 
      for  var j := 1 to n do  
      begin
        b[i, j] := a[k];
        k := k + 1;
      end
    else
      for var j := n downto 1 do
      begin
        b[i, j] := a[k];
        k := k + 1;
      end;
end;


  {процедура вывода матр1}
procedure vivodMatr1(var a: massA; k: integer);
begin
  
  writeln('Матрица сверху вниз, справа налево');
  for var i := 1 to k do
  begin
    for var j := 1 to k do
      write(b[i, j]:5:2);
    writeln;
  end;
end;

{вывод в текст файл}
procedure OpenTextFile(var ftxt: text; t: string);
begin
  assign(ftxt, t);
  append(ftxt);
end;
end.