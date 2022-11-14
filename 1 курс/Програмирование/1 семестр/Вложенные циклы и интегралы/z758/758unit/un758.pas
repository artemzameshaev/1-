unit un758;
 interface
function Sum (x: real; eps: real): real;
procedure OpenTextFile(var ftxt: text; t:string);

implementation 

{функция расчета бесконечной суммы}
function Sum (x: real; eps: real): real;
 var k: integer; 
 S, a, b: real; // a постоянный кф суммы 1/x^3
 begin
   S := 0; // обнуление суммы
   a:= x*sqr(x);
   k:=1;
   repeat 
     b:= 1/sqr(k); //расчет слагаемого
     S:= S+b; // расчет суммы
     k:= k+1; // подготовка следующего слагаемого
   until (b<eps); 
   Sum:= S*a;  
 end;

procedure OpenTextFile(var ftxt: text; t:string);
begin
  assign(ftxt, t);
  append(ftxt);
end;
end.