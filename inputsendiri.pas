program perkenalan;
uses crt;

procedure nama(teks : string);
begin
    write ('nama kamu adalah : ', teks);
end;

var
a : string;

begin
clrscr;

write('masukan nama : ');
readln(a);
nama(a);
readln;
end.