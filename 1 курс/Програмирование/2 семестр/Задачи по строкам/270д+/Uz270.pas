unit Uz270;

interface

procedure Delete_Sim_zero (s,s1,s2:string; i:byte);
procedure Print_Del_Sim (var ftxt:TextFile; s2:string);



implementation


procedure Delete_Sim_zero (s,s1,s2:string; i:byte);
  begin

repeat

until not(pos(' ',s) in [0,1]);


s1:=copy(s,1,pos(' ',s)-1);
s2:='';
i:=1;
while i<=length(s) do
 {if(s[i]='0')and (s[i+1] <> '.') then i:=i+1
else
 begin
  s2:=s2+s[i];
  i:=i+1;
  end;    }


  i:= pos (' ',s);
  s1:= copy (s,i+1, length (s)-i-1);
  for
  zero:= true;
  if zero = true and s1[1]= '.' then
  point - pos = 4;
  s2= copy (s1, 4-1, length(s1)-3);
end;

procedure Print_Del_Sim (var ftxt: TextFile; s2:string);

 begin
writeln(ftxt,s2);
 end;


end.
