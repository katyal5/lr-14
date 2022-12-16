uses crt;
var f,g,h:file of real;
    i:integer;
    a:real;
begin
clrscr;
randomize;
assign(f,'fileF');
reset(f);
assign(g,'fileG');
rewrite(g);
assign(h,'fileH');
rewrite(h);
writeln('Содержание исходного файла:');
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a:0:2,' ');
  if odd(i)then write(g,a)
  else write(h,a)
 end;
writeln;
writeln;
seek(g,0);
writeln('Содержание файла с нечетными номерами:');
while not eof(g) do
 begin
  read(g,a);
  write(a:0:2,' ');
 end;
close(g);
writeln;
writeln;
seek(h,0);
writeln('Содержание файла с четными номерами:');
while not eof(h) do
 begin
  read(h,a);
  write(a:0:2,' ');
 end;
close(h);
readln
end.