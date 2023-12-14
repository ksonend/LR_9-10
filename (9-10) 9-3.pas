var
  i,g, h: integer;
  q: array [1..100] of integer;   // задание 3

function otr(z: integer): integer;
var sr:=0;
begin
  for var i := 1 to 5 do
    if (q[i]<0) then 
      begin 
      sr:= q[i]; g:=i
      end;
    writeln('номер последенего отрицательного = ',g,' / ',sr)
end;

begin
  for i := 1 to 5 do
  begin
    read(q[i]); 
  end;
  otr(5);
end.