program part3;
uses crt;

var
uts, uas, na : real;
poin : char;

begin
    clrscr;
    write('Berapa nilai UTS: ');
    readln(uts);
    write('Berapa nilai UAS: ');
    readln(uas);

    na:= 0.4 * uts + 0.6 * uas;

    if (na >= 80) then
    begin
        poin := 'A';
    end

    else if (na >= 70) then
    begin
        poin := 'B';
    end

    else if (na >= 60) then
    begin
        poin := 'C';
    end

    else if (na >= 50) then
    begin
        poin := 'D';
    end

    else
    begin
        writeln('poin tidak ada');
        poin := '-';
    end;

    writeln;
    writeln ('nilai akhir: ', na:0:2);
    writeln ('Poin : ' , poin);
end.