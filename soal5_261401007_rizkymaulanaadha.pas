program Soal5;

var
  M, N, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
  // Meminta jumlah mahasiswa
  write('Masukkan jumlah mahasiswa: ');
  readln(M);

  // Meminta jumlah tugas
  write('Masukkan jumlah tugas: ');
  readln(N);

  // Nilai awal jumlah mahasiswa
  lulus := 0;
  tidakLulus := 0;

  // Perulangan untuk setiap mahasiswa
  for i := 1 to M do
  begin
    // Total nilai mahasiswa dimulai dari 0
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    // Perulangan untuk setiap tugas
    // Ini disebut nested loop
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);

      // Menjumlahkan semua nilai tugas
      total := total + nilai;
    end;

    // Menghitung rata-rata
    rata := total / N;

    writeln('Rata-rata = ', rata:0:2);

    // Menentukan lulus atau tidak
    if rata >= 65 then
    begin
      writeln('LULUS');

      // Menambah jumlah mahasiswa lulus
      lulus := lulus + 1;
    end
    else
    begin
      writeln('TIDAK LULUS');

      // Menambah jumlah mahasiswa tidak lulus
      tidakLulus := tidakLulus + 1;
    end;
  end;

  // Menampilkan jumlah mahasiswa
  writeln;
  writeln('Jumlah LULUS       = ', lulus);
  writeln('Jumlah TIDAK LULUS = ', tidakLulus);
end.