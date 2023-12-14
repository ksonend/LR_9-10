var
  arr1,arr2: array[1..10] of Integer;
  sum1, sum2, i: Integer; 

function ret(i: integer):integer;
var sum1,sum2:integer;
begin
Writeln('Первый массив:');
  for i := 1 to 10 do
  begin
    Write(arr1[i], ' ');
  end;
  Writeln;
  Writeln('Второй массив:');
  for i := 1 to 10 do
  begin
    Write(arr2[i], ' ');
  end;
  Writeln;
end;

begin
  // заполняем массивы случайными значениями
  for i := 1 to 10 do
  begin
    arr1[i] := Random(-10,10);
    arr2[i] := Random(-10,10);
  end;
  ret(i);// вывод массивов
  sum1 := 0;// находим сумму положительных элементов
  sum2 := 0;
  for i := 1 to 10 do
  begin
    if arr1[i] > 0 then
      sum1 := sum1 + arr1[i];
    if arr2[i] > 0 then
      sum2 := sum2 + arr2[i];
  end;
  writeln();
  writeln('сумма 1 массива: ',sum1);
   writeln('сумма 2 массива: ',sum2);
   
  if sum1 < sum2 then// проверяем, сумма которого массива меньше, и *10
  begin
    for i := 1 to 10 do
    begin
      arr1[i] := arr1[i] * 10;
    end;
  end
  else
  begin for i := 1 to 10 do
    begin arr2[i] := arr2[i] * 10;end;
      end;
writeln();
  Writeln('Измененные массивы:'); // выводим измененные массивы
  ret(i);//вывод массивов
end.