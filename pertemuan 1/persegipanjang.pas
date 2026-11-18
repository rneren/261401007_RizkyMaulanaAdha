program persegipanjang;
uses crt;

var
a : integer;
b: integer;
hasil : integer;

begin
clrscr;

writeln('masukan panjang: ');
read(a);
writeln('masukan lebar: ');
read(b);

hasil := a*b;

writeln('luas persegi panjang: ' ,hasil);

end.
