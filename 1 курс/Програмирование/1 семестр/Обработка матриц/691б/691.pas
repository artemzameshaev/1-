const
  n = 8;

type
  matrA = array[1..n * n] of real;
  matrB = array[1..n, 1..n] of real;

var
  i, j, k: integer;
  a: matrA;
  b: matrB;

begin
  randomize;
  writeln('Последовательность А');
  for i := 1 to n * n do
  begin
    a[i] := 10 * random;
    write(a[i]:5:2);
  end;
  writeln;
  k := 0;
  i := 0;
  repeat
    inc(i);
    if odd(i) then //если строка нечетная
      for j := n downto 1 do//идем с конца
      begin
        inc(k);
        b[i, j] := a[k]
      end
    else //если четная строка
      for j := 1 to n do
      begin
        inc(k);
        b[i, j] := a[k];
      end;
  until k = n * n;
  writeln('Матрица сверху вниз, справа налево');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(b[i, j]:5:2);
    writeln;
  end;
end.