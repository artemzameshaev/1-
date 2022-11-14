Var a,b:integer;
 Begin
 Writeln('Введите число');
 Readln(a);
 Writeln('Введите число');
 Readln(b);
 If a<>b then
 begin
 a:=a+b;
 b:=a;
 end
 else
 begin
 a:=0;
 b:=0;
 end;
 Writeln('a=',a);
 Writeln('b=',b);
 Readln;
 
 end.