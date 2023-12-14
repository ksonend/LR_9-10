var
  q: array [1..5] of integer; // задача 2
sr,g,w,r,i:integer;

procedure ret(x:real);//integer;
var i:integer;
begin
  for i := 1 to 5 do
    if (q[i]<sr) and (q[i]<0) then 
      begin 
      sr:= q[i]; g:=i;
      end;
   writeln('максимальный отрицательный: ', sr,' индекс: ',g);
   
    if (abs(q[i])<w) then
      begin 
      w:= q[i]; r:=i;
      end;
   writeln('минимальный по модулю: ',abs(w) ,' индекс: ',r);
end;

begin
  for i := 1 to 5 do
  begin
    readln(q[i]);
  end;
  w:=q[1];
  sr:=q[1];
    ret(q[i]);
end.