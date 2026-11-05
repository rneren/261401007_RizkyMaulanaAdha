program NilaiMahasiswa;
uses crt;

var
  n, i, j: integer;
  tugas, kuis, uts, uas, rata: array[1..5] of integer;

begin
  clrscr;

  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);

  if (n < 1) or (n > 5) then
  begin
    writeln('Jumlah mahasiswa harus 1 sampai 5!');
  end
  else
  begin
    for i := 1 to n do
    begin
      writeln;
      writeln('Mahasiswa ke-', i);

      write('Nilai tugas: ');
      readln(tugas[i]);

      write('Nilai kuis: ');
      readln(kuis[i]);

      write('Nilai UTS: ');
      readln(uts[i]);

      write('Nilai UAS: ');
      readln(uas[i]);

      rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) div 4;
    end;

    writeln;
    writeln('===== HASIL NILAI MAHASISWA =====');

    for i := 1 to n do
    begin
      writeln;
      writeln('Mahasiswa ke-', i);
      writeln('Nilai tugas : ', tugas[i]);
      writeln('Nilai kuis  : ', kuis[i]);
      writeln('Nilai UTS   : ', uts[i]);
      writeln('Nilai UAS   : ', uas[i]);
      writeln('Rata-rata   : ', rata[i]);

      if rata[i] >= 70 then
        writeln('Keterangan  : LULUS')
      else
        writeln('Keterangan  : TIDAK LULUS');
    end;
  end;

  readln;
end.