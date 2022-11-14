type
Mass = array [1..100] of integer;
var 
  i : integer;
  a, b, c : real;
  f: mass;
  ftxt: text;
begin
 assign (ftxt,'z145.txt');
  append (ftxt);
 writeln (ftxt, '');
f[1]:=1;
f[2]:=1;
f[3]:=1; 
  write(ftxt, f[1], ' ', f[2], ' ', f[3], ' ');
 
 for i:=4 to 20 do
 
 begin
    f[I]:= (i+3)*(f[i-2]-1)+(i+4)*f[i-3];
    write(ftxt, f[i], ' ');

  end;
close (ftxt);
end.
