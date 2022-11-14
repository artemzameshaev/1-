unit LogicModul;

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils;

type
  matrix = array [0..128,0..128] of integer;
  var row,col:integer;

Procedure CreateMatrix(var x:matrix; row,col:integer);  //Создание матрицы

implementation

Procedure CreateMatrix(var x:matrix; row,col:integer);  //Создание матрицы
var i,j:integer;
begin
   for  i:=0 to col do
   for j:=0 to row do
   x[i,j]:=random(20);
end;

end.

