program Soal8;

var
  golongan: char;
  jam, lembur: integer;
  gajiPokok, bonus, total: integer;

begin
  // Memasukkan golongan karyawan
  write('Masukkan golongan (A/B/C): ');
  readln(golongan);

  // Memasukkan jumlah jam kerja
  write('Masukkan jumlah jam kerja: ');
  readln(jam);

  // Menentukan gaji pokok berdasarkan golongan
  case golongan of
    'A', 'a':
      gajiPokok := 1500000;

    'B', 'b':
      gajiPokok := 2000000;

    'C', 'c':
      gajiPokok := 2500000;

  else
    begin
      writeln('Golongan tidak valid.');
      halt;
    end;
  end;

  // Nilai awal lembur dan bonus
  lembur := 0;
  bonus := 0;

  // Jika bekerja lebih dari 40 jam
  if jam > 40 then
    lembur := (jam - 40) * 20000;

  // Bonus khusus golongan C jika lebih dari 50 jam
  if ((golongan = 'C') or (golongan = 'c')) and (jam > 50) then
    bonus := 100000;

  // Menghitung total gaji
  total := gajiPokok + lembur + bonus;

  // Menampilkan hasil
  writeln;
  writeln('Gaji Pokok = Rp', gajiPokok);
  writeln('Lembur     = Rp', lembur);
  writeln('Bonus      = Rp', bonus);
  writeln('Total Gaji = Rp', total);
end.