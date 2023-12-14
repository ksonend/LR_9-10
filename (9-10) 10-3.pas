var i,j:integer;
mas:array[1..8,1..8] of integer;
mas1:array [1..8] of integer;
begin

  for i:=1 to 8 do // создание массива
    for j:=1 to 8 do
      mas[i,j]:=random(0,7);
    for i:=1 to 8 do
    begin
      for j:=1 to 8 do
        write(mas[i,j]:4);
      writeln;
    end;
    
  for i:=1 to 8 do // проверка соседних элементов
    begin
    for j:=1 to 7 do
      begin
      if (mas[i,j]+mas[i,j+1]=7) then begin mas1[i]:=1; break; end
      else mas1[i]:=-1;
      end;
    end;
   print (mas1);
end.