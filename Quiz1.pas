program Quiz1;
uses crt;

function Faktorial(n: integer): integer;
begin
    if n <= 1 then
        Faktorial := 1
    else
        Faktorial := n * Faktorial(n - 1);
end;

var
    nilai, hasil: integer;

begin
    write('Masukkan nilai: ');
    readln(nilai);

    hasil := Faktorial(nilai);

    writeln('Hasil: ', hasil);
end.
