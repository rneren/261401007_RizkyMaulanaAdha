program Soal3;

var
  N, pilihan, i: integer;

begin
  // Meminta batas angka
  write('Masukkan N: ');
  readln(N);

  // Memilih kategori deret
  write('Pilih kategori (1 = Ganjil, 2 = Genap): ');
  readln(pilihan);

  // Mulai dari angka 1
  i := 1;

  // Perulangan selama i tidak melebihi N
  while i <= N do
  begin

    // Jika memilih bilangan ganjil
    if pilihan = 1 then
    begin
      // Jika angka genap, lewati angka tersebut
      if i mod 2 = 0 then
      begin
        i := i + 1;
        continue;
      end;
    end

    // Jika memilih bilangan genap
    else if pilihan = 2 then
    begin
      // Jika angka ganjil, lewati angka tersebut
      if i mod 2 <> 0 then
      begin
        i := i + 1;
        continue;
      end;
    end;

    // Jika angka kelipatan 5, tidak ditampilkan
    if i mod 5 <> 0 then
      writeln(i);

    // Menambah nilai i
    i := i + 1;
  end;
end.