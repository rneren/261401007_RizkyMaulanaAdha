program Soal9;

var
  bulan, tahun, hari: integer;
  kabisat: boolean;

begin
  // Memasukkan bulan
  write('Masukkan bulan (1-12): ');
  readln(bulan);

  // Memasukkan tahun
  write('Masukkan tahun: ');
  readln(tahun);

  // Menentukan apakah tahun tersebut tahun kabisat
  kabisat := ((tahun mod 400 = 0) or
              ((tahun mod 4 = 0) and (tahun mod 100 <> 0)));

  // Menentukan jumlah hari berdasarkan bulan
  case bulan of

    // Bulan yang memiliki 31 hari
    1, 3, 5, 7, 8, 10, 12:
      hari := 31;

    // Bulan yang memiliki 30 hari
    4, 6, 9, 11:
      hari := 30;

    // Bulan Februari
    2:
      begin
        // Februari memiliki 29 hari jika kabisat
        if kabisat then
          hari := 29
        else
          hari := 28;
      end;

  else
    // Jika nomor bulan tidak valid
    begin
      writeln('Bulan tidak valid.');
      halt;
    end;
  end;

  // Menampilkan jumlah hari
  writeln('Jumlah hari = ', hari);
end.