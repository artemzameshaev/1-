Type
Mass = array [1..10000] of integer;
const n=50;
var 
    a:array[1..n] of real;
    xp,xs:real;
    i:byte;
    f: mass;
    ftxt: text;
begin
    assign (ftxt,'164.txt');
    append (ftxt);
    writeln (ftxt, '');
    randomize;
    writeln(ftxt,'Исходный массив:');
  for i:=1 to n do
 begin
   a[i]:=10*random;
   write(ftxt,a[i]:5:1);
 end;
  writeln;
   writeln;
   writeln(ftxt,'Сглаженный массив:');
   write(ftxt,a[1]:5:1);
  for i:=2 to n-1 do
 begin
   xp:=a[i-1];
   xs:=a[i+1];
   a[i]:=(xp+a[i]+xs)/3;
   write(ftxt,a[i]:5:1);
  end;
  write(ftxt,a[n]:5:1);
  close (ftxt);
  readln
  
end.
