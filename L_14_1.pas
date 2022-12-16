uses crt;
var f:file of char;
    c:char;
    i,k:integer;
begin
assign(f,'symbol');
rewrite(f);
write('Сколько символов записать в файл k=');
read(k);
writeln('Введите в файл ',k,' символов, в том числе пробел:');
for i:=1 to k do
 begin
  read(c);
  write(f,c);
 end;
reset(f);
clrscr;
writeln('Исходный файл:');
k:=-1;
for i:=0 to filesize(f)-1 do
 begin
  read(f,c);
  write(c);
  if c=' ' then k:=i;
 end;
writeln;
if k=-1 then
 begin
  writeln('Вы забыли ввести пробел, работа программы завершена');
  close(f);
 end
else
 begin
  seek(f,k);
  truncate(f);
  writeln('Удаление символов после последнего пробела, включая его:');
  seek(f,0);
  while not eof(f) do
   begin
    read(f,c);
    write(c);
   end;
  close(f);
 end;
 end.