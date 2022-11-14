Type
Mass = array [1..100] of real;
const n=50;
var 
 
    xp,xs:real;
    i:byte;
    f,a: mass;
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
   f[1]:=a[1];
f[n]:= a[n];
   write(ftxt,f[1]:5:1);
  for i:=2 to n-1 do
 begin
 
   f[i]:=(a[i-1]+a[i]+a[i+1])/3;
   write(ftxt,f[i]:5:1);
  end;
  write(ftxt,f[n]:5:1);
  close (ftxt);
  readln
  
end.


