unit Uz254;

interface
const
n=8;
  type
mass= array[1..n]of char;{������ ��������, ����� ������}
procedure Calculate_Posled ( var s:string; var ftxt:TextFile);



implementation

procedure Calculate_Posled ( var s:string; var ftxt:TextFile);
var
i,k,n:integer;
begin
  n:= length(s);
 k:=0;
  for i:=1 to n do
   if (s[i]=',')and(s[i+1]='-') then {���� ������� ������ ���������}
   begin
     k:=1;
       break;
   end;

  if k=1 writeln (ftxt,'����� ����� ������������������ ����'); 
  else
  writeln(ftxt,'����� ������ ������������������ ���');

end;



end.
