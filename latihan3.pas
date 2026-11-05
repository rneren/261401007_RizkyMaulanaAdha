program part3;
uses crt;

var
suhu : real;

begin
    clrscr;
    write('Berapa suhu: ');
    readln(suhu);

    if (suhu < 36 ) then
    begin
        writeln('suhu rendah');
    end

    else if (suhu >= 36) and (suhu <= 37.5) then
    begin
         writeln('suhu normal');
    end

    else if (suhu > 37.5) then
    begin
        writeln('demam');
    end

    else
    begin
        writeln('suhu tidak ada');
    end;

end.