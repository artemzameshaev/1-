type
Mass = array[1..100] of integer;
var 
   k,n,c, a:integer;
   f: mass;
   ftxt: text;
   
     
begin
    assign (ftxt,'z194.txt');
    append (ftxt);
    writeln (ftxt,'');
    k:=0; {сумма элемнтов после найденного а}
    readln(n);
    read(a); {элемнет в массиве}
    writeln (ftxt,'искомый элимент = ',a:4); //искомый элимент равен 
    {ввод массива и вывод в текстовый файл}
    
for  var i:= 1 to n do 
  begin
    read(f[i]); 
    write (ftxt,f[i]:4);
  end;
{определить позицию в массиве в которой элем = а}
c:= 0;
for var i:=1 to n do
    if f[i]=a then 
begin 
 c:= i;
 break;
 end;
 if c=0 then k:= -10
 else
 for var j:=c+1 to n do    
    k:=f[j]+k;
    

writeln(ftxt,'искомая сумма =', k:3);
 close (ftxt);
end.
