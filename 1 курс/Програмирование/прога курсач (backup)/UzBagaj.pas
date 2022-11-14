unit UzBagaj;

interface
  uses SysUtils, Dialogs; //������ ��� �����/������ ������

type
  Zak = record           //��� ������
    Number: real;          //����� �����
    FIO : string[64];      //��� ���������
    Zakaz: string [255];   //�������� ����
    SumZak: real;          //����� ������
  end;

  PUzel = ^Zp;        //��� ��������� �� ����

  Zp = record         //��� ���� ������
    x: Zak;             //���������� ���������� � ����� ������
    next: PUzel;        //��������� �� ��������� ����
    pred: PUzel;        //��������� �� ���������� ����
  end;

  FZap = file of Zak;    //�������� ��� ��� �������� ������ � ������


  var
    f:PUzel = nil;  // ��������� �� ����


{�������� ��� ������ � ������������ ������� }
  procedure AddFirst(var f: PUzel; a: PUzel);{�������� ���� a ������ � ������}
  procedure AddAfter(var old:PUzel; a: PUzel);{�������� ���� a ����� old}

{��������� ������; f -��������� �� ������ ������}
 procedure BuildSpisok(var f: PUzel; var ftip: FZap);

{����� ������ � ��������� ����}
  procedure WriteSpText(var f: PUzel;var ftxt:Text);

{�������� �� ������ ������ ���� � ������� ��� ������������}
  procedure DelFirstElement(var f,a: PUzel);

{�������� �� ������ ����,��������� �� ����� old � ������� ��� ������������}
  procedure DelElement(var old,a: PUzel);
  procedure DelSpisok(var f: PUzel); //������� ������

  {�������� ��������������� �����}
  procedure CloseTipFile (var fTip:FZap);

  {��������� ������ � �������������� ����}
  procedure WriteTipFile (var f:PUzel; var fTip: Fzap);

  {��������� ���������� � ��������������� �����}
  procedure ReadTipFile (var f: PUzel; var fTip:Fzap);


implementation

    {�������� ���� a ������ � ������}
procedure AddFirst(var f: PUzel; a: PUzel);
 begin
  a^.next := f;     //���������� � ������� ��������� � ������ ������
  if f<> nil then f^.pred := a;   //���� ������ �� ���� �� ������ �������� �����
  f:=a;   // ��������� ��������� �� ����� ������
 end;

    {�������� ���� a ����� old}
  procedure AddAfter(var old:PUzel; a: PUzel);
 begin
  a^.next := old^.next;  //��������� ,�, �� ���������
  old^.next := a;       //old ��������� � ,�,
   if a^.next <> nil then a^.next^.pred := a; //���� ,�, �� ��������� �� ����������� ������� �� ,�, � ,�,
    a^.pred := old;  // ,�, ��������� � old
 end;

    {��������� ������; f -��������� �� ������ ������}
 procedure BuildSpisok(var f: PUzel; var ftip: FZap);
  var
  a,d :PUzel;
  ch: char;
begin
   repeat
   new(a);
   with a^.x do
   begin
      Number:= StrToInt(InputBox ('������� ����� ������','',''));     //���� ������ ����� (� ������� �� ����� ���� �����)
      FIO := InputBox('������� ��� ���������',' ',' ');                 //���� ��� �������� (� ������� �� ����� ���� �����)
      Zakaz:= InputBox('������� ������ ���������� ����',' ',' ');       //���� ���������� ���� (� ������� �� ����� ���� �����)
      SumZak:= StrToFloat(InputBox('������� ����� ������',' ',' '));    //���� ����� ������ (� ������� �� ����� ���� �����)
    end;
  // seek(ftip, Filesize(ftip));// ����������� ���������� ��������� � ����� �����
  // write(ftip, a^.x); //������ � ���-�� ���� ����� ������ � ������

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
  ch:= InputBox('��� ���������� ����� ������� 0',' ',' ')[1];
  until (ch = '0') or (ch ='0');
end;

   {����� ������ � ��������� ����}
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
   s:= '����� ������: '+FloatToStr(y.Number) + #13 +' ��� ���������: '+  y.FIO +#13 +' ���������� �����: '+ y.Zakaz + #13 +' ����� ������: '+
   FloatToStr(y.SumZak);     // ������������ ����� � ��������� ����
   Itog:=Itog+y.SumZak;
   writeln(ftxt, s);  //����� ��������� � ����� ����
   p:= p^.next;
  end;
  writeln(ftxt,'���� ���: ' + FloatToStr(Itog)+#13);
end;

  {�������� �� ������ ������ ���� � ������� ��� ������������}
procedure DelFirstElement(var f,a: PUzel);
begin
  a := f; //������� ,�, �� ������ ������
  f := f^.next;  //����������� ������ ������
  a^.next := nil;   // �������������
  if f<>nil then    //�������� �� ������
    f^.pred := nil;
end;

   {�������� �� ������ ����,��������� �� ����� old � ������� ��� ������������}
procedure DelElement(var old,a: PUzel);
begin
  if (old^.next = nil) then a:= nil //old ��������� ���� � ������
   else
    if (old^.next^.next = nil) then //old ������������� ���� � ������
 begin
  a := old^.next;
  a^.pred:= nil;
  old^.next:= nil;
 end
  else
   begin //�� old �� ����� ���� ����� � ������
    a := old^.next;
    old^.next := a^.next;
    old^.next^.pred:= old;
    a^.next := nil;
    a^.pred:= nil;
   end;
end;

   {�������� ������}
procedure DelSpisok(var f: PUzel); //������� ������
 var
  a: PUzel;
begin
 while (f <> nil) do
  begin
   DelFirstElement(f,a);
   Dispose(a);
  end;
end;

    {�������� ��������������� �����}
procedure CloseTipFile (var fTip:FZap);
begin
  CloseFile(fTip);
end;

{��������� ������ � �������������� ����}

procedure WriteTipFile (var f:PUzel; var fTip: Fzap);
var
  p: PUzel;    //������� ���������
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

{��������� ���������� � ��������������� �����}
procedure ReadTipFile (var f: PUzel; var fTip:Fzap);
  var
  a,d:PUzel;
begin
  if filesize(ftip)<>0 then    // ����� ���-�� ���� �� ������, �� ������ ������
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





