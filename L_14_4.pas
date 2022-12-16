var
 S:String;
 F_in: File of Real;
 Sum,temp:real;
 i:integer;

begin
  Write('File: ');
  Readln(S);
  Assign(F_in,S);
  Reset(F_in);

  i:=1;
  Sum:=0;
  while (not eof(F_in)) do
   begin
    Read(F_in,temp);
    if (i mod 2 = 0) then Sum:=Sum+temp;
    inc(i);
   end;

  Writeln(Sum);
  Close(F_in);
end.