program Soal10;

var
  hari: integer;

begin
  // Memasukkan nomor hari
  write('Masukkan nomor hari (1-7): ');
  readln(hari);

  // Menentukan nama hari menggunakan case
  case hari of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');

  // Jika input bukan 1 sampai 7
  else
    writeln('Nomor hari tidak valid.');
  end;
end.