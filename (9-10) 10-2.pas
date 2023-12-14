var i,j:integer;
mas:array[1..8,1..6] of integer;
mas1:array [1..8] of integer;
begin

  for i:=1 to 8 do
    for j:=1 to 6 do
      mas[i,j]:=random(-20,20);
    for i:=1 to 8 do
    begin
      for j:=1 to 6 do
        write(mas[i,j]:4);
      writeln;
    end;
  for i:=1 to 8 do
    begin
    for j:=1 to 6 do
      begin
      if (mas[i,j]<0) then begin mas1[i]:=-1; break; end
      else mas1[i]:=1;
      end;
    end;
    writeln();
   writeln ('готовый массив: ',mas1);
end.