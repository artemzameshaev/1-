const n=10;
var s:array[1..n]of char;{массив символов, можно строку}
    i,k:integer;
begin
write('Vvedite ',n,' simvolov:');
for i:=1 to n do
read(s[i]);
readln;
k:=0;
for i:=1 to n do
if (s[i]=',')and(s[i+1]='-') then {если находим нужное сочетание}
   begin
     writeln('Takie chleny posledovatelnosti est!');{сообщаем}
     readln;{читаем}
     k:=1; {фиксируем}
     halt; {заканчиваем программу}
   end;
if k=0 then writeln('Takih chlenov v posledovatelnosti net!');
readln  {если нет, сообщаем}
end.
