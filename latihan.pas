program tes;
uses crt;

var
a,b,c: integer;
tugas,uts,uas,akhir : real;

begin
    clrscr;
    writeln ('masukan nilai tugas : ');
    readln (a);
    writeln ('masukan nilai uts : ');
    readln (b);
    writeln ('masukan nilai uas : ');
    readln (c);

    tugas := a*30/100;
    uts := b*30/100;
    uas := c*30/100;
    akhir := tugas + uts + uas;
    writeln('nilai tugas akhir : ', akhir:0:2); 
end.