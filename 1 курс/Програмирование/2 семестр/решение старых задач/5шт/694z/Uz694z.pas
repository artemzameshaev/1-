unit Uz694z;

interface

type
  matr = array[1..100, 1..100] of integer;

 { ввод матрицы}
procedure Zap_Matr(var a: matr; n: integer);
{вывод матрицы}
procedure Print_matr(a: matr; n: integer; var ftxt: TextFile);
{вывод в текст файл}
procedure OpenTextFile(var ftxt: TextFile; FileName: string); {формальные параметры ftxt filename}

implementation

 {ввод матрицы}
procedure Zap_Matr(var a: matr; n: integer);
var
  i, j,l,d, k: integer;
begin
  for i := 1 to n div 2 do
    for j := 1 to n do
    begin
      if (i = 1) then a[i, j] := 1;
      if (j < i) then a[i, j] := 0
      else
      if (j > n + 1 - i) then a[i, j] := 0
      else a[i, j] := 1;

      if odd(n) then
      begin
        k := n div 2 + 1;
        {j:=0;}
        for  l := 1 to n do
          if (k <> l) then a[k, l] := 0
          else a[k, l] := 1
      end;

      if odd(n) then k := n div 2 + 2
      else k := n div 2 + 1;
      for l := k to n do
        for d := 1 to n do
        begin
          if (d < n + 1 - l) then a[l, d] := 0
          else
          if (d > l) then a[l, d] := 0
          else a[l, d] := 1;
        end;
    end;
end;

  {вывод матрицы}
procedure Print_matr(a: matr; n: integer; var ftxt: TextFile);
var
  i, j: integer;
begin
  for i := 1 to n do //перебор строк
    for j := 1 to n do //перебор столбцов
      if j = n then
      begin
        writeln(ftxt, a[i, j]:3);

      end
       else
      begin
        write(ftxt, a[i, j]:3);

      end;
end;

{вывод в текст файл}
procedure OpenTextFile(var ftxt: TextFile; FileName: string);
begin
  assign(ftxt, FileName);
  append(ftxt);
end;

end.
