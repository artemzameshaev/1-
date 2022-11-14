var 
s,s1,s2:string;
i:byte;
begin
repeat
writeln('Введите строку содержащую хотя бы 1 пробел.');
readln(s);
if pos(' ',s) in [0,1] then writeln('Строка введена неверно! Повторите ввод.');
until not(pos(' ',s) in [0,1]);
s1:=copy(s,1,pos(' ',s)-1);
s2:='';
i:=1;
while i<=length(s) do
if(s[i]='0')and (s[i+1] <> '.') then i:=i+1
else
 begin
  s2:=s2+s[i];
  i:=i+1;
 end;
write(s2);
end.