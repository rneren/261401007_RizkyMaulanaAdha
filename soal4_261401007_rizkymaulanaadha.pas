program Soal4;

var
  pilihan: integer;
  a, b, hasil: real;
  ulang: char;

begin

  // Perulangan kalkulator
  repeat

    // Menampilkan menu
    writeln('===== KALKULATOR =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian');
    writeln('5. DIV & MOD');

    // Meminta pilihan operasi
    write('Pilih operasi: ');
    readln(pilihan);

    // Memasukkan dua angka
    write('Masukkan angka pertama: ');
    readln(a);

    write('Masukkan angka kedua: ');
    readln(b);

    // Memilih operasi berdasarkan pilihan
    case pilihan of

      // Penjumlahan
      1:
        begin
          hasil := a + b;
          writeln('Hasil = ', hasil:0:2);
        end;

      // Pengurangan
      2:
        begin
          hasil := a - b;
          writeln('Hasil = ', hasil:0:2);
        end;

      // Perkalian
      3:
        begin
          hasil := a * b;
          writeln('Hasil = ', hasil:0:2);
        end;

      // Pembagian
      4:
        begin
          // Mengecek agar tidak membagi dengan 0
          if b <> 0 then
            writeln('Hasil = ', (a / b):0:2)
          else
            writeln('Tidak dapat dibagi 0');
        end;

      // DIV dan MOD
      5:
        begin
          writeln('DIV = ', trunc(a) div trunc(b));
          writeln('MOD = ', trunc(a) mod trunc(b));
        end;

    // Jika pilihan tidak ada
    else
      writeln('Pilihan tidak tersedia.');
    end;

    // Menanyakan apakah ingin mengulang
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

  // Berhenti jika pengguna memilih T
  until (ulang = 'T') or (ulang = 't');

end.