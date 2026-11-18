program DataMakananPointer;

uses crt;

type
    TMakanan = record
        nama: string;
        harga: longint;
    end;

var
    makanan: array[1..100] of TMakanan;
    p: ^TMakanan;
    i, n: integer;
    termahal, termurah: integer;

begin
    clrscr;

    write('Masukkan jumlah makanan: ');
    readln(n);

    for i := 1 to n do
    begin
        writeln;
        writeln('Makanan ke-', i);

        write('Nama makanan: ');
        readln(makanan[i].nama);

        write('Harga makanan: ');
        readln(makanan[i].harga);
    end;

    termahal := 1;
    termurah := 1;


    for i := 1 to n do
    begin
        p := @makanan[i];

        if p^.harga > makanan[termahal].harga then
            termahal := i;

        if p^.harga < makanan[termurah].harga then
            termurah := i;
    end;

    writeln;
    writeln('===== HASIL PENCARIAN =====');


    p := @makanan[termahal];

    writeln('Makanan Termahal');
    writeln('Nama  : ', p^.nama);
    writeln('Harga : Rp', p^.harga);

    writeln;


    p := @makanan[termurah];

    writeln('Makanan Termurah');
    writeln('Nama  : ', p^.nama);
    writeln('Harga : Rp', p^.harga);

    readln;
end.