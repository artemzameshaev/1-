﻿const n=6;
type 
mass=array[0..6] of real;
function P_Calculate(x:byte;m:mass):real;
var i,j:byte;
    s,y:real;
begin
s:=m[0];
for i:=n downto 1 do
 begin
  y:=1;
  for j:=1 to i do
  y:=y*x;
  s:=s+m[i]*y;
 end;
P_Calculate:=s;
end;
var a:mass;
    x,i,j:byte;
    res:real;
begin

writeln('Введите ',n+1,' коэффициентов многочлена:');
for i:=n downto 0 do
 begin
  write('a[',i,']=');
  readln(a[i]);
 end;

writeln('Коэффициенты многочлена:');
for i:=n downto 0 do
write(a[i]:0:1,' ');
writeln;
writeln;
writeln('Значение выражения Р(х+1)-Р(х) при х=1,3,4:');
for x:=1 to 4 do
if x<>2 then
 begin
  write('x=',x,' значение=',P_Calculate(x+1,a)-P_Calculate(x,a):0:1);
  writeln;
 end;

end.