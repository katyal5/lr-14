uses crt;
var f:file of real;
    n,i:integer;
    a:real;
begin
clrscr;
randomize;
assign(f,'fileF');
rewrite(f);
write('Сколько чисел записать в файл F n=');
readln(n);
for i:=1 to n do
 begin
  a:=10*random;
  write(f,a);
 end;
end.