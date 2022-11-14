type
Mass = array[1..100] of integer;
var 
  x, y, k1, k2, i:integer;
  a: mass;
  ftxt: text;
begin
  assign (ftxt,'z229.txt');
  readln (x,y);
  append (ftxt);
  writeln (ftxt,''); 
  i:= 0;
  k1:=0;
  k2:= 0;
 while  i<>1 do
begin
  if (power(y,k1)-1 <= x) and (x < power(y,k1)) then
begin
  i:= 1;
  write(ftxt,'k = ',k1);
 break;
end; 
  if (power(y,k2)-1 <= x) and (x < power(y,k2)) then
begin
  i := 1;
  write(ftxt,'k = ',k2);
 break;
end;
  k1:=k1+1;
  k2:=k2+1;
end;   
    close (ftxt);
end.