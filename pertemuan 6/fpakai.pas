program luaslingkaran;
uses crt;

function luas(r:real):real;
begin
    luas := 3.14 * r * r;
end;

begin
clrscr;
writeln('luas lingkaran : ', luas(7):0:2);
readln;
end.