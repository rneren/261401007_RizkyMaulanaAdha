program Soal2;

var
  password: string;
  i: integer;
  benar: boolean;

begin
  // Nilai awal
  benar := false;
  i := 0;

  // Perulangan untuk mencoba password
  repeat
    i := i + 1;

    // Meminta password
    write('Masukkan kata sandi: ');
    readln(password);

    // Mengecek apakah password benar
    if password = 'pascal123' then
    begin
      writeln('Login Berhasil! Selamat Datang');

      // Menandakan password benar
      benar := true;

      // Menghentikan perulangan
      break;
    end
    else
      writeln('Kata sandi salah.');

  // Perulangan berhenti setelah 3 percobaan
  until i = 3;

  // Jika password tetap salah
  if benar = false then
    writeln('Akses Ditolak! Akun Terkunci.');
end.