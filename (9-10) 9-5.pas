var
  arr1, arr2: array[1..10] of integer;
  i: integer;
  maxEl, minEl: integer;
  indexMax, indexMin, q: integer;

begin
  for i := 1 to 10 do// Заполнение массивов случайными числами
  begin
    arr1[i] := Random(1,100);
    arr2[i] := Random(1,100);
  end;

  writeln('Исходный массив 1:');// Печать исходных массивов
  for i := 1 to 10 do
    write(arr1[i], ' ');
  writeln;
  writeln('Исходный массив 2:');
  for i := 1 to 10 do
    write(arr2[i], ' ');
  writeln;
  
  
  q:= 0;// Поиск первого кратного пяти элемента
  for i := 1 to 10 do
  begin
    if (arr1[i] mod 5 = 0) then
    begin
      q:= 1;
      break;
    end;
  end;
  
  if q=1 then// Замена максимального элемента нулем в первом массиве
  begin
    maxEl := arr1[1];
    indexMax := 1;
    for i := 2 to 10 do
    begin
      if arr1[i] > maxEl then
      begin
        maxEl := arr1[i];
        indexMax := i;
      end;
    end;
    arr1[indexMax] := 0;
  end;
  
  // Поиск минимального элемента во втором массиве
  minEl := arr2[1];
  indexMin := 1;
  for i := 2 to 10 do
  begin
    if arr2[i] < minEl then
    begin
      minEl := arr2[i];
      indexMin := i;
    end;
  end;
  
  // Умножение на 2 всех элементов после минимального во втором массиве
  for i := indexMin + 1 to 10 do
    arr2[i] := arr2[i] * 2;
  
  // Печать измененных массивов
  writeln('Измененный массив 1:');
  for i := 1 to 10 do
    write(arr1[i], ' ');
  writeln;
  writeln('Измененный массив 2:');
  for i := 1 to 10 do
    write(arr2[i], ' ');
  writeln;
end.