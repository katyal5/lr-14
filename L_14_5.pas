var inf:file of real; a,b,c,r,max:real; 
begin 
 assign(inf, 'TEXT.txt'); 
 rewrite(inf); 
 for var i := 1 to 10 do 
 begin 
 r:=random(1, 100); 
 write(inf, r); 
 end; 
 close(inf); 
 reset(inf); 
 read(inf,a); 
 read(inf,b); 
 read(inf,c); 
 print('Последний локальный максимум:'); 
 while not eof(inf) do begin 
 if b>a then if b>c then max:=b; 
 a:=b; 
 b:=c; 
 read(inf,c); 
 end; 
 write(max); 
 Close(inf); 
end.