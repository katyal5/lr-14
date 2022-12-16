var inf,outf: text; s:string;n:byte; 
begin 
 assign(inf,'C:\IN'); 
 rewrite(inf); 
 print('Введите кол-во строк в исходный файл: '); 
 read(n); 
 writeln('Введите строки в исходный файл'); 
 for var i:=0 to n do 
 begin 
 s:=readstring(); 
 println(inf,s); 
 end; 
 close(inf); 
 assign(outf,'C:\OUT'); 
 rewrite(outf); 
 reset(inf); 
 var max:=0; 
 while not eof(inf) do 
 begin 
 readln(inf,s); 
 if max<length(s) then 
 begin 
 max:=length(s); 
 end; 
 end; 
 reset(inf); 
 while not eof(inf) do 
 begin 
 readln(inf,s); 
 if max=length(s) then 
 begin 
 for var i:=length(s) downto 1 do 
 begin 
 write(outf,s[i]); 
 end; 
 writeln(outf); 
 end; 
 end; 
 close(inf); 
 close(outf); 
end.
