var
   x1, x2, y1,  y2, dist: real;
   ftxt:text;
begin
  assign (ftxt,'z24.txt');
  append(ftxt);
  writeln (ftxt,'');
     writeLn(ftxt,'координаты первой точки');
     readLn(x1, y1);
     writeln (ftxt, 'x1=',x1, ' y1=',y1);
     writeLn(ftxt,'координаты второй точки');
     ReadLn(X2, Y2);
     writeln (ftxt, 'x2=',x2, ' y2=',y2);
     dist := Sqrt(Sqr(X2 - X1) + Sqr(Y2 - Y1));
     writeLn(ftxt,'расстояние между точками равно ', dist:2:2);
     close(ftxt);
end.