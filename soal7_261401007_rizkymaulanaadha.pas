program Soal7;

var
  kode: char;
  jam: integer;
  tarif: integer;

begin
  // Meminta kode kendaraan
  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);

  // Meminta lama parkir
  write('Masukkan lama parkir (jam): ');
  readln(jam);

  // Menentukan tarif berdasarkan kode kendaraan
  case kode of

    // Mobil
    'M', 'm':
      begin
        // Jika lebih dari 10 jam, tarif maksimal
        if jam > 10 then
          tarif := 30000

        // Jika parkir 1 jam
        else if jam <= 1 then
          tarif := 5000

        // Jam berikutnya Rp3.000
        else
          tarif := 5000 + (jam - 1) * 3000;
      end;

    // Motor
    'K', 'k':
      begin
        if jam > 10 then
          tarif := 10000
        else if jam <= 1 then
          tarif := 2000
        else
          tarif := 2000 + (jam - 1) * 1000;
      end;

    // Bus
    'B', 'b':
      begin
        if jam > 10 then
          tarif := 50000
        else if jam <= 1 then
          tarif := 10000
        else
          tarif := 10000 + (jam - 1) * 5000;
      end;

  else
    // Jika kode tidak sesuai
    begin
      writeln('Kode kendaraan tidak valid.');
      halt;
    end;
  end;

  // Menampilkan total tarif
  writeln('Total tarif parkir = Rp', tarif);
end.