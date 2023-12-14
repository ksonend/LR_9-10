var i,j,n,m,h:integer;
mas:array[1..6,1..8] of integer;
mas1:array [1..8] of integer;
begin
  for i:=1 to 6 do
    for j:=1 to 8 do
      mas[i,j]:=random(-20,20);
    for i:=1 to 6 do
    begin
      for j:=1 to 8 do
        write(mas[i,j]:4);
      writeln;
    end;
  for i:=1 to 6 do
    begin
    for j:=1 to 8 do
      begin
      if mas[i,j] mod 4=0 then begin mas1[i]:=mas[i,j]; break; end
      else mas1[i]:=0;
      end;
    end;
   print (mas1);
end.