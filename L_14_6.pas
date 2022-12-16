var intext,outtext: file of real; max,min,a:real; bmin,bmax,b:integer; 
begin 
 Assign(intext, 'txt.txt'); 
 Assign(outtext, 'TXT.txt'); 
 rewrite(intext); 
 for var i:= 1 to 10 do 
 begin 
 a:=random(1,100); 
 write(a,' '); 
 write(intext,a); 
 end; 
 max:=0; 
 min:=100; 
 reset(intext); 
 while not eof(intext) do 
 begin 
 b:=b+1; 
 read(intext,a); 
 if a>max then 
 begin 
 max:=a; 
 bmax:=b; 
 end; 
 if a<min then 
 begin 
 min:=a; 
 bmin:=b; 
 end; 
 end; 
 b:=0; 
 reset(intext); 
 rewrite(outtext); 
 while not eof(intext) do 
 begin 
 b:=b+1; 
 read(intext,a); 
 if b=bmax then 
 begin 
 write(outtext,min); 
 continue; 
 end; 
 if b=bmin then 
 begin 
 write(outtext,max); 
 continue; 
 end; 
 write(outtext,a); 
 end; 
 writeln; 
 reset(outtext); 
 while not eof(outtext) do 
 begin 
 read(outtext,a); 
 write(a,' '); 
 end; 
 close(intext); 
 close(outtext); 
 erase(intext); 
end.