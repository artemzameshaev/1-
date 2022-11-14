unit un374;

 interface
 
type 
matr= array[1..100,1..100] of real;

procedure Zap_matr(var c:matr; n, m:integer); 
procedure Print_Matr( c:matr; ftxt:text; n,m:integer);
procedure OpenTextFile(var ftxt: text; FileName: string);
 
 implementation
 
procedure Zap_matr(var c:matr; n, m:integer); 
var i,j:integer;
begin
for i:=1 to n do
for j:=1 to m do
c[i,j]:=  sin (i + j/2);
random(10);
end; 

procedure Print_Matr( c:matr; ftxt:text; n,m:integer);
var i,j,k:integer;
begin
k:=0;
for i:=1 to n do 
 begin
for j:=1 to m do 
  begin
write(c[i,j]:5:2);
if c[i,j]<0 then k:=k+1;
  end;
writeln;
 end;
writeln('Положительных элементов  ',k);
end;

{открытие текстового файлаа}
procedure OpenTextFile(var ftxt: text; FileName: string);
begin
  assign(ftxt, FileName);
  append(ftxt);
end;
end.