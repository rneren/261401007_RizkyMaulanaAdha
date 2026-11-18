program bilanganprima;
uses crt;

var
  n: integer;
  prima: boolean;

procedure cekprima(x: integer; var prima: boolean);
var
  i: integer;
begin
  prima := true;

  if x <= 1 then
    prima := false
  else
  begin
    for i := 2 to x - 1 do
    begin
      if x mod i = 0 then
        prima := false;
    end;
  end;
end;

begin
  clrscr;

  write('Masukkan angka: ');
  readln(n);

  cekprima(n, prima);

  if prima then
    writeln('Output: Prima')
  else
    writeln('Output: Non-Prima');

  readln;
end.