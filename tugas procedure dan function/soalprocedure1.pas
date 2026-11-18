program tugas4;
uses crt;

var
  n: integer;

procedure HitungFaktorial;
var
  i: integer;
  hasil: longint;
begin
  hasil := 1;

  for i := 1 to n do
  begin
    hasil := hasil * i;
  end;

  writeln('Hasil faktorial = ', hasil);
end;

begin
  clrscr;

  repeat
    write('Masukkan bilangan: ');
    readln(n);

    if n < 0 then
      writeln('Bilangan tidak boleh negatif!');
  until n >= 0;

  HitungFaktorial;

  readln;
end.