program penjumalahan;
uses crt;
var 
a : integer;
b : integer;
hasil : integer;

begin
clrscr;
    write('masukan bilangan 1: ');
    read(a);

    write('masukan bilangan 2: ');
    readln(b);

    hasil := a+b;
    writeln('hasilnya adalah = ' , hasil);
end.