program tes;
uses crt;

var
angka : integer;
i : ^word;
ptrangka : ^integer;

begin
clrscr;

angka := 10;
writeln ('Angkanya : ', angka);

ptrangka := @angka;
writeln(ptrangka^);

i := addr(ptrangka);
writeln('Alamat memorinya : ',i^);

angka := 30;
writeln (ptrangka^);

end.