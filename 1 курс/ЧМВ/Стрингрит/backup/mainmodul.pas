unit MainModul;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids, Menus,logicmodul;

type

  { TMainForm }

  TMainForm = class(TForm)
    MainButton: TButton;
    EditHigh: TEdit;
    EditWidth: TEdit;
    LabelHigh: TLabel;
    LabelWidth: TLabel;
    MainMenu1: TMainMenu;
    MenuInfo: TMenuItem;
    StringGrid: TStringGrid;
    procedure MainButtonClick(Sender: TObject);  //Основная кнопка
    procedure MenuInfoClick(Sender: TObject);   //Инфо о разработчике
    procedure PrintMatrix(x:matrix; row,col:integer); //Вывод матрицы
    procedure CreateStringGrid();      //Создание таблицы
  private

  public

  end;

var
  MainForm: TMainForm;
  row,col:integer;
  x:matrix;

implementation

{$R *.lfm}



{ TMainForm }



procedure TMainForm.MainButtonClick(Sender: TObject);   //Основная кнопка
begin
  randomize;
    if (TryStrToInt(EditHigh.Text,row)=  false) and (TryStrToInt(EditWidth.Text,col)=  false) or (col<0) and (row<0) then begin
  EditHigh.color:= clRed;  //Если введено не число, то красный цвет
  EditWidth.color:= clRed;
  ShowMessage('Неправильно введены данные');
  exit;
  end
  else
  EditHigh.color:= clWhite;
  EditWidth.color:= clWhite;

  if (TryStrToInt(EditHigh.Text,row)=  false) or (row<0) then begin
  EditHigh.color:= clRed;  //Если введено не число, то красный цвет
  ShowMessage('Неверный ввод (должна быть цифра)');
  exit;
  end
  else
  EditHigh.color:= clWhite;

  if (TryStrToInt(EditWidth.Text,col)=  false) or (col<0) then begin
  EditWidth.color:= clRed;  //Если введено не число, то красный цвет
  ShowMessage('Неверный ввод (должна быть цифра)');
  exit;
  end
  else
  EditWidth.color:= clWhite;



  row:= StrToInt(EditHigh.Text);       //кол-во строк
  col:= StrToInt(EditWidth.Text);      //кол-во столбцов

  CreateStringGrid();           //Создание таблицы
  CreateMatrix(x,col,row);             //Создание матрицы
  PrintMatrix(x,row,col); //Вывод матрицы
end;




procedure TMainForm.PrintMatrix(x:matrix; row,col:integer); //Вывод матрицы
var i,j:integer;
begin
  for  i:=0 to col -1  do
  for  j:=0 to row -1 do
  StringGrid.Cells[i,j]:=IntToStr(x[i,j]); //заполнение случайными числами

  ////
  if StrToInt(EditHigh.Text) > 100 then
begin
ShowMessage('Слишком большое колличество строк');
//Result := False;
Exit;
end;
if StrToInt(EditWidth.Text) <1 then
begin
ShowMessage('Колличество срок не может быть меньше 1');
//Result := False;
Exit;
end;

if StrToInt(EditWidth.Text) > 100 then

begin
ShowMessage('Слишком большое колличество столбцов');
//Result := False;
Exit;
end;
if StrToInt(EditWidth.Text) <1 then
begin
ShowMessage('Колличество столбцов не может быть меньше 1');
//Result := False;
Exit;
end;


  ////

end;
procedure TMainForm.CreateStringGrid();      //Создание таблицы
begin

  StringGrid.RowCount:= StrToInt(EditHigh.Text);   //кол-во строк из EditHigh
  StringGrid.ColCount:= StrToInt(EditWidth.Text);  //кол-во столбцов из EditWidth
end;

procedure TMainForm.MenuInfoClick(Sender: TObject);    //Инфо о разработчике
begin
  application.title:='О разработчике';
  ShowMessage('Программа создает матрицу из рандомных чисел');
end;



end.

