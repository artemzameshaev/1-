Type
Mass = array [1..10000] of integer;
var
  i,n:integer;
  b:mass;
  t: text;
begin
assign(t,'pyt.txt');
reset (t);
  read(t,n);
  close (t);
  append (t);
  //writeln (t,'');
  for i:=1 to n do
   begin
    b[i]:= i*i;
    writeln (t,'b=',b[i]); 
   end;
   close (t);
end.
