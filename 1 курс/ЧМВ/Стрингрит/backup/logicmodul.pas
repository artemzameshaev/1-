unit LogicModul;

{$mode objfpc}{$H+}

interface


uses
  Classes, SysUtils;

type
  matrix = array [0..128,0..128] of integer;
  var row,col:integer;

Procedure CreateMatrix(var x:matrix; row,col:integer);  //Создание матрицы
function proverka(): boolean; //проверка Edit_Line

implementation

Procedure CreateMatrix(var x:matrix; row,col:integer);  //Создание матрицы
var i,j:integer;
begin
   for  i:=0 to col do
   for j:=0 to row do
   x[i,j]:=random(20);
end;



function proverka_row(): boolean; //проверка Edit_Line
begin
if TryStrToInt(EditHigh.Text, x) = False then //проверка Edit на цифры
begin
EditHigh.Color := clred;
Application.Title := 'Ошибка';
ShowMessage('Неправильно введено колличество элементов массива');
Result := False;
exit;
end
else
EditHigh.Color := clwhite;
Result := True;
if StrToInt(EditHigh.Text) > 100 then
//Проверка размера массива 0<n<101
begin
ShowMessage('Слишком большое колличество строк');
Result := False;
Exit;
end;
if StrToInt(EditHigh.Text) <1 then
begin
ShowMessage('Колличество строк не может быть меньше 1');
Result := False;
Exit;
end;
end;

end.

