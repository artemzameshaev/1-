const n=10;
var x:array[1..n]of real;
    y:array[1..n]of real;
    i:integer;
    s:real;
 
function len(x1,y1,x2,y2:real):real;
begin
 len:=sqrt(sqr(x1-x2)+sqr(y1-y2));
end;
 
begin
 randomize;
 for i:=1 to n do
 begin
  x[i]:=random(100)/10;
  y[i]:=random(100)/10;
  writeln('Точка ',i,'= ',x[i]:3:1,' , ',y[i]:3:1);
 end;
 s:=len(x[1],y[1],x[n],y[n]);
 for i:=1 to (n-1) do
 begin
  s:= s + len(x[i],y[i],x[i+1],x[i+1]);
 end;
 writeln('Растояние =  ',s:4:1);
end.