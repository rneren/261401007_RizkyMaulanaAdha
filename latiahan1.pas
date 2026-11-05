program minggu;
uses crt;

var
makanan : integer;

begin
    clrscr;
    writeln('kode makanan');
    writeln('1.ayam');
    writeln('2.bebek');
    writeln('3.ikan');
    writeln('4.jengkol');
    writeln('5.kangkung');

    write('masukan kode makanan : ');
    readln(makanan);

    case makanan of
    1 : writeln('ayam bayar 5000');
    2 : writeln('bebek bayar 7000');
    3 : writeln('ikan bayar 6000');
    4 : writeln('jengkol bayar 2000');
    5 : writeln('kangkung bayar 1000');

    else
        writeln('Angka yang kau masukan kurang dari 1 atau lebih dari 7');
    end;
end.