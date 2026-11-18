program satu;
uses crt;

var 
    angka : integer;
    pAngka : ^integer;

begin
clrscr;

    angka := 10;
    pAngka := @angka;

    writeln('Nilai angkanya : ', angka);
    writeln('Nilai pointernya : ', pAngka^);
end.