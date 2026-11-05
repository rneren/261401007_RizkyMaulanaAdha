program arraydyra;
uses crt;

var
kursi : array[1..5] of longint;

begin
    clrscr;
    kursi[1] := 10;
    kursi[2] := 100;
    kursi[3] := 1000;
    kursi[4] := 10000;
    kursi[5] := 100000;

    writeln(kursi[1]);
    writeln(kursi[2]);
    writeln(kursi[3]);
    writeln(kursi[4]);
    writeln(kursi[5]);
end.