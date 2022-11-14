unit un694;

interface

type
  matr = array[1..100, 1..100] of integer;
  {ввод матрицы}
procedure Zap_matr(var a: matr; n: integer);
{вывод матрицы на экран}
procedure print_matr(a: matr; n: integer);
{вывод матрицы в текст файл}
procedure print_matr_file(a: matr; n: integer; f: text);
{вывод в текст файл}
procedure OpenTextFile(var ftxt: text; t: string);
implementation  


  {ввод матрицы}
procedure Zap_matr(var a: matr; n: integer);
var
  i: integer;
begin
  for i := 1 to n do 
    a[i, i] := n - i + 1; // заполнение элементов главной диагонали
end;

{вывод матрицы на экран}
procedure print_matr(a: matr; n: integer);
var
  i, j: integer;
begin
  for i := 1 to n do //перебор строк
    for j := 1 to n do //перебор столбцов  
      if j = n then 
      begin
        writeln(a[i, j]:3); //вывод на экран
      end
       else
      begin
        write(a[i, j]:3);  //вывод на экран
      end;
end;

{вывод матрицы в текст файл}
procedure print_matr_file(a: matr; n: integer; f: text);
var
  i, j: integer;
begin
  for i := 1 to n do //перебор строк
    for j := 1 to n do //перебор столбцов  
      if j = n then 
      begin
        writeln(f, a[i, j]:3);  //вывод в тектс файл 
      end
       else
      begin
        write(f, a[i, j]:3); //вывод в тектс файл   
      end;
end;

{вывод в текст файл}
procedure OpenTextFile(var ftxt: text; t: string);
begin
  assign(ftxt, t);
  append(ftxt);
end;
end.