﻿Var 
  s,b,c:string[255];
  n,i:integer;
begin  
writeln ('Введите 1-цы и 0-ли');
readln(s); //ввод 0-й и 1-ц
n:=Length(s); //длина строки введеных (а)
For i := 1 to n do
begin
b:=Copy(s,i,1); //копирование части символов
if b='1' // присвоить элементу b значение 1
then b:='0' // есди 1 то 0
 else b:='1'; //инеаче вместо 0 будет 1
Insert(b,c,i); //вставка исходной строки начиная с указанной позиции 
end;
writeln ('Замена');
writeln(c); //вывод полученного результата 
end.    