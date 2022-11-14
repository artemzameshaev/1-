unit Uz2694;
interface
 type
  matr = array[1..100, 1..100] of integer;
  {���� �������}
procedure Zap_matr(var a: matr; n: integer);
{����� ������� � ����� ����}
procedure print_matr_file(a: matr; n: integer; var ftxt: TextFile);
{����� � ����� ����}
procedure OpenTextFile(var ftxt: TextFile; t: string);

implementation
uses Dialogs;

 {���� �������}
procedure Zap_matr(var a: matr; n: integer);
var
  i: integer;
begin
  for i := 1 to n do 
    a[i, i] := n - i + 1; // ���������� ��������� ������� ���������
end;



{����� ������� � ����� ����}
procedure print_matr_file(a: matr; n: integer; var ftxt: TextFile);
var
  i, j: integer;
begin
  for i := 1 to n do //������� �����
    for j := 1 to n do //������� ��������
      if j = n then 
      begin
        writeln(ftxt, a[i, j]:3);  //����� � ����� ����
      end
       else
      begin
        write(ftxt, a[i, j]:3); //����� � ����� ����   
      end;
end;

{����� � ����� ����}
procedure OpenTextFile(var ftxt: TextFile; t: string);
begin
  assign(ftxt, t);
  append(ftxt);
end;
end.
