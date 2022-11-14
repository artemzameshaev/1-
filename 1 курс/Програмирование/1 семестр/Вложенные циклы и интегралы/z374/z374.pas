type
  mass = array [1..10, 1..10] of real;
var
  i, j, n,k: integer;
  b: mass;
  ftxt: text;
 function a(i, j: real): real;
begin
  a := sin(i + j/2);
end;

begin
  assign (ftxt,'z374.txt');
   append (ftxt);
   writeln (ftxt, '');
  
  writeln (ftxt,'Ведите n'); 
  readln(n);
  for i := 1 to n do
begin
  for j := 1 to n do
begin
  b[i, j] := a(i, j);
  write(ftxt,b[i, j]:6:2);
  if b[i,j] > 0 then
  k:=k+1;
end;
  writeln(ftxt);
end;
  write(ftxt,'Количество = ',k);
  close (ftxt);
end.