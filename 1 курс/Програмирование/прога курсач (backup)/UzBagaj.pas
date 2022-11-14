unit UzBagaj;

interface
  uses SysUtils, Dialogs; //Модули для ввода/вывода данных

type
  Zak = record           //Тип заказа
    Number: real;          //номер стола
    FIO : string[64];      //Фио официанта
    Zakaz: string [255];   //перечень блюд
    SumZak: real;          //сумма заказа
  end;

  PUzel = ^Zp;        //Тип указателя на узел

  Zp = record         //Тип узла списка
    x: Zak;             //Информация хранящаяся в узлах списка
    next: PUzel;        //Указатель на следующий узел
    pred: PUzel;        //Указатель на предыдущий узел
  end;

  FZap = file of Zak;    //Файловый тип для хранения данных о заказе


  var
    f:PUzel = nil;  // Указатель на узел


{Операции для работы с двусвязанным списком }
  procedure AddFirst(var f: PUzel; a: PUzel);{Вставить узел a первым в список}
  procedure AddAfter(var old:PUzel; a: PUzel);{Вставить узел a после old}

{Построить список; f -указатель на голову списка}
 procedure BuildSpisok(var f: PUzel; var ftip: FZap);

{Вывод списка в текстовый файл}
  procedure WriteSpText(var f: PUzel;var ftxt:Text);

{Выделить из списка первый узел и вернуть его пользователю}
  procedure DelFirstElement(var f,a: PUzel);

{Выделить из списка узел,следующий за узлом old и вернуть его пользователю}
  procedure DelElement(var old,a: PUzel);
  procedure DelSpisok(var f: PUzel); //Удалить список

  {закрытие типизированного файла}
  procedure CloseTipFile (var fTip:FZap);

  {процедура вывода в типизированный файл}
  procedure WriteTipFile (var f:PUzel; var fTip: Fzap);

  {процедура считавания с типизированного файла}
  procedure ReadTipFile (var f: PUzel; var fTip:Fzap);


implementation

    {Вставить узел a первым в список}
procedure AddFirst(var f: PUzel; a: PUzel);
 begin
  a^.next := f;     //сваязываем с головой добовляем в начало списка
  if f<> nil then f^.pred := a;   //если список не пуст то делаем обратную связь
  f:=a;   // переводим указатель на новую голову
 end;

    {Вставить узел a после old}
  procedure AddAfter(var old:PUzel; a: PUzel);
 begin
  a^.next := old^.next;  //связываем ,а, со следующим
  old^.next := a;       //old связываем с ,а,
   if a^.next <> nil then a^.next^.pred := a; //если ,а, не последний то свяызваемый элемент за ,а, с ,а,
    a^.pred := old;  // ,а, связываем с old
 end;

    {Построить список; f -указатель на голову списка}
 procedure BuildSpisok(var f: PUzel; var ftip: FZap);
  var
  a,d :PUzel;
  ch: char;
begin
   repeat
   new(a);
   with a^.x do
   begin
      Number:= StrToInt(InputBox ('Введите номер заказа','',''));     //Ввод номера стола (с выводом на экран окна ввода)
      FIO := InputBox('Введите ФИО официанта',' ',' ');                 //Ввод ФИО офицанта (с выводом на экран окна ввода)
      Zakaz:= InputBox('Введите список заказанныз блюд',' ',' ');       //Ввод Заказанных блюд (с выводом на экран окна ввода)
      SumZak:= StrToFloat(InputBox('Введите сумму заказа',' ',' '));    //Ввод суммы заказа (с выводом на экран окна ввода)
    end;
  // seek(ftip, Filesize(ftip));// Перемещение невидемого указателя в конец файла
  // write(ftip, a^.x); //Запись в тип-ый файл новых данных о заказе

   a^.next := nil;
   a^.pred := nil; 

   if (f = nil) then
    begin
     AddFirst(f,a);
     d:= f;
    end
  else
    begin
     AddAfter(d,a);
     d := a;
   end;
  ch:= InputBox('Для завершения ввода нажмите 0',' ',' ')[1];
  until (ch = '0') or (ch ='0');
end;

   {Вывод списка в текстовый файл}
procedure WriteSpText(var f: PUzel; var ftxt:Text);
 var
  p: PUzel;
  s: string;
  y: Zak;
  Itog: real;
begin
 p:= f;
 while not(p = nil) do
  begin
   y:= p^.x;
   s:= 'Номер заказа: '+FloatToStr(y.Number) + #13 +' ФИО официанта: '+  y.FIO +#13 +' Заказанные блюда: '+ y.Zakaz + #13 +' Сумма заказа: '+
   FloatToStr(y.SumZak);     // поэлементный вывод в текстовый файл
   Itog:=Itog+y.SumZak;
   writeln(ftxt, s);  //вывод элементов в текст файл
   p:= p^.next;
  end;
  writeln(ftxt,'Итог дня: ' + FloatToStr(Itog)+#13);
end;

  {Выделить из списка первый узел и вернуть его пользователю}
procedure DelFirstElement(var f,a: PUzel);
begin
  a := f; //перевод ,а, на голову списка
  f := f^.next;  //передвегаем голову вперед
  a^.next := nil;   // перестраховка
  if f<>nil then    //проходим по списку
    f^.pred := nil;
end;

   {Выделить из списка узел,следующий за узлом old и вернуть его пользователю}
procedure DelElement(var old,a: PUzel);
begin
  if (old^.next = nil) then a:= nil //old последний узел в списке
   else
    if (old^.next^.next = nil) then //old предпоследний узел в списке
 begin
  a := old^.next;
  a^.pred:= nil;
  old^.next:= nil;
 end
  else
   begin //за old не менее двух узлов в списке
    a := old^.next;
    old^.next := a^.next;
    old^.next^.pred:= old;
    a^.next := nil;
    a^.pred:= nil;
   end;
end;

   {Удаление списка}
procedure DelSpisok(var f: PUzel); //Удалить список
 var
  a: PUzel;
begin
 while (f <> nil) do
  begin
   DelFirstElement(f,a);
   Dispose(a);
  end;
end;

    {закрытие типизированного файла}
procedure CloseTipFile (var fTip:FZap);
begin
  CloseFile(fTip);
end;

{процедура вывода в типизированный файл}

procedure WriteTipFile (var f:PUzel; var fTip: Fzap);
var
  p: PUzel;    //текущий указатель
  y: Zak;
begin
  p:= f;
  seek(ftip, filesize(ftip));
  while not (p = nil) do
   begin
     y:= p^.x;
     write (fTip,y);
     p:= p^.next;
   end;
end;

{процедура считавания с типизированного файла}
procedure ReadTipFile (var f: PUzel; var fTip:Fzap);
  var
  a,d:PUzel;
begin
  if filesize(ftip)<>0 then    // Еслли тип-ый файл не пустой, то создаём список
  begin
    seek(ftip,0);
    begin
    while Not(Eof(ftip)) do
    begin
      new(a);
      read (fTip,a^.x);
      a^.next:= nil;
      a^.pred:=nil;
      if(f=nil) then
      begin
        AddFirst (f,a);
        d:=f;
      end
      else
      begin
        AddAfter(d,a);
        d:=a;
      end;
    end;
  end;
end;
end;


end.





