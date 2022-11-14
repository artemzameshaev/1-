{$include modul758.pas}
var
a, k: integer;
S, x, y: real;
ftxt: text;

function toch(a, k: integer): integer;
var
S, x, y: real;
begin
a := 0;
S := 0;
k := 1;
end;

procedure OpenTextFile(var ftxt: text);
begin
assign(ftxt, 'z758.txt');
rewrite(ftxt);
writeln(ftxt, '');
end;

begin
OpenTextFile(ftxt);
readln(x);
writeln(ftxt, 'При x = ', x);
while (a < 4) do
begin
y := 1 / (x * x * x) * (k * k);
S := S + y;
k := k + 1;
write(ftxt, y:0:8);
writeln(ftxt, ' - ', a:0);
if abs(y) < exp(ln(10)*(1/6))
then a := a + 1
else a := 0;
end;
writeln(ftxt, 'сумма вычислений с точностью до 10^(-6) равна', S:0:3);
readln;
close(ftxt);
end.