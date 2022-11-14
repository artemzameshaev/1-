unit un341;
interface
const n=5;
type 
   mass = array[1..n] of integer;
   {функция определяющая наиб значение модуля разности среди 2х значений массива}
 function modmax(var a,b:mass; m:integer):integer;
 function modmin(var a,b:mass; m:integer):integer;

 implementation 
 
 {функция определяющая наиб значение модуля разности среди 2х значений массива}
 function modmax(var a,b:mass; m:integer):integer;
   var i,j,mx, tx:integer; 
  
 begin
    mx:=0;
    for i:=1 to n-1 do //рассматриваем модуль разности с 1го i=1 до n-1
     for j:=i+1 to n do// cравнение модуля разности между [i] [j] элементами массива
      begin
       if abs(a[i]-a[j])>mx then 
         mx:=abs(a[i]-a[j]);
      end; 
    modmax:=mx;
  end;
 
 function modmin(var a,b:mass; m:integer):integer;
  var i,j,mn, tx:integer; 
begin
    mn:=10000;
    for i:=1 to n-1 do //рассматриваем модуль разности с 1го i=1 до n-1
     for j:=i+1 to n do// cравнение модуля разности между [i] [j] элементами массива
      begin
       if abs(a[i]-a[j])<mn then 
         mn:=abs(a[i]-a[j]);
      end; 
    modmin:=mn;
  end;

begin
   assign (ftxt,'z341.txt');
   append (ftxt);
   writeln (ftxt, '');

   writeln('Введите ',n,' различных целых чисел:'); //ввод в ручную
   for i:=1 to n do
 begin                                                            //вывод в текст
   write('a[',i,']= '); // ввод массива
   read(a[i]);
 end;
 end.