{функция расчета элемента i,j матрицы b}
function matr1 (var a:matr; i,j:integer): integer;
    var k,l, sum:integer;
 begin
  sum:=0;
  if i=j then matr1:= a[i,j]
  else if i<j then
    begin
     for k:=i to j do
      for l:=i to j do
       sum:=sum+a[k,l];
     matr1:=sum;   
    end
    else 
      begin
      for k:=j to i do
       for l:=j to i do
        sum:=sum+a[k,l];
      matr1:=sum;   
      end;
  end;
