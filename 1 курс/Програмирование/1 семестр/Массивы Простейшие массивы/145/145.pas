type
Mass = array [1..10000] of integer;
var 
  i : integer;
  a, b, c : real;
  f: mass;
  ftxt: text;
begin
 assign (ftxt,'145.txt');
  append (ftxt);
 writeln (ftxt, '');
 ( a, b, c) := (1, 1, 1);
  write(ftxt, a, ' ', b, ' ', c, ' ');
 
 for i:=4 to 20 do
 
 begin
    (a, b, c) := (b, c, (i+3)*(c-1)+(i+4)*a);
    write(ftxt, c, ' ');

  end;
close (ftxt);
end.

