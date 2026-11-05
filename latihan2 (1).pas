program part3;
uses crt;

var
tahun : integer;

begin
    clrscr;
    write('tahun berapa sekarang: ');
    readln(tahun);

    if (tahun mod 400=0 ) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
    begin
        writeln('tahun kabisat')
    end

    
    else
    begin
        writeln('bukan tahun kabisat');
    end;
end.