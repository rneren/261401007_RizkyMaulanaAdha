program Quiz3;
uses crt;

var
    n, i, a, b, c: integer;

begin
    write('Masukkan jumlah suku: ');
    readln(n);

    a := 1;
    b := 1;

    write('Deret Fibonacci: ');

    for i := 1 to n do
    begin
        write(a, ' ');

        c := a + b;
        a := b;
        b := c;
    end;

    writeln;
end.
