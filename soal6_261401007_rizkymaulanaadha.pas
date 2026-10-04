program Soal6;

var
  tugas, uts, uas, kehadiran, akhir: real;

begin
  // Memasukkan nilai tugas
  write('Masukkan nilai Tugas: ');
  readln(tugas);

  // Memasukkan nilai UTS
  write('Masukkan nilai UTS: ');
  readln(uts);

  // Memasukkan nilai UAS
  write('Masukkan nilai UAS: ');
  readln(uas);

  // Memasukkan persentase kehadiran
  write('Masukkan kehadiran (%): ');
  readln(kehadiran);

  // Menghitung nilai akhir
  akhir := (tugas * 0.30) +
           (uts * 0.30) +
           (uas * 0.40);

  writeln;
  writeln('Nilai Akhir = ', akhir:0:2);

  // Menentukan status kelulusan
  // Syarat: nilai >= 60 dan kehadiran >= 80%
  if (akhir >= 60) and (kehadiran >= 80) then
    writeln('Status: LULUS')
  else
    writeln('Status: TIDAK LULUS');

  // Menentukan indeks berdasarkan nilai akhir
  if akhir >= 85 then
    writeln('Indeks: A')
  else if akhir >= 75 then
    writeln('Indeks: B')
  else if akhir >= 60 then
    writeln('Indeks: C')
  else if akhir >= 50 then
    writeln('Indeks: D')
  else
    writeln('Indeks: E');
end.