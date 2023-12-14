var i,j,min,sum,b:integer; sr:real;
mas:array[1..8,1..8] of integer;
mas1:array [1..8] of integer;
begin
  for i:=1 to 8 do // создание массива
    for j:=1 to 8 do
      mas[i,j]:=random(-20,20);
    for i:=1 to 8 do
    begin
      for j:=1 to 8 do
        write(mas[i,j]:4);
      writeln;
    end;
    
  for i:=1 to 8 do // нахождение минимального элемента
  begin
    min:=mas[i,1];
    for j:=1 to 8 do
      begin
      if (min>=mas[i,j]) then begin min:=mas[i,j]; mas1[i]:=min end;
      end;
    end;
   write (mas1); // вывод массива
   
   for i:=1 to 8 do // нахождение среднего арифметического
     sum:=sum+mas1[i];
   sr:=sum/8;
   sr:=round(sr);
   writeln;
   writeln (sr);
   for i:=1 to 8 do
     if (mas1[i]=sr) then b:=1
   else b:=0;
   
   if b>0 then writeln ('Содержит свое средне арифметическое')
   else writeln ('Несодержит свое средне арифметическое')
end.