var m,n:integer;
 
function f_nod(m,n:integer):integer;
begin
   if m=0 then f_nod:=n
   else if n=0 then f_nod:=m
   else if m>n then f_nod:=f_nod(m mod n,n)
   else f_nod:=f_nod(m,n mod m);
end;
 
begin

writeln ('Введите два натуральных числа');
readln (m,n);
writeln ('Наибольший общий делитель чисел ',m,n,' равен ',f_nod(m,n));//при вызове функции, необходима записать в неё параметры, от которых она работае

end.