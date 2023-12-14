var
  w: array[1..8, 1..8] of Integer;
  w2: array[1..8] of Integer;
  i, j, max, q: Integer;
begin
  for i := 1 to 8 do// Заполняем двумерный массив 
  begin
    for j := 1 to 8 do
    begin
      w[i, j] := random(1..10);
    end;
  end;
  for i := 1 to 8 do// Выводим двумерный массив на экран
  begin
    for j := 1 to 8 do
    begin Write(w[i, j]:3);end;
    Writeln;
  end;
  for i := 1 to 8 do// Формируем одномерный массив
  begin
    max := w[i, 1];
    q:= 1;
    
    for j := 2 to 8 do
    begin
      if w[i, j] > max then
      begin
        max := w[i, j];
        q:= 1;
      end
      else if w[i, j] = max then
        q:= q+ 1;
    end;
    
    if q = 1 then
      w2[i] := 1
    else
      w2[i] := -1;
  end;
  for i := 1 to 8 do// Выводим одномерный массив на экран
  begin
    Write(w2[i]:3);
  end;
end.