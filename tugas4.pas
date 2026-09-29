{Nama: Rizky Maulana Adha
NIM: 261401007

KOM: B}

program PenentuanBeasiswa;

var
ipk, penghasilan: real;
prestasi: integer;

begin
writeln('=== PENENTUAN BEASISWA ===');

write('Masukkan IPK: ');
readln(ipk);

write('Masukkan penghasilan orang tua: Rp');
readln(penghasilan);

write('Masukkan jumlah prestasi: ');
readln(prestasi);

if (ipk >= 3.75) and
(penghasilan <= 5000000) and
(prestasi >= 2) then
begin
writeln('Beasiswa Penuh');
end
else if (ipk >= 3.50) and
(penghasilan <= 7000000) and
(prestasi >= 1) then
begin
writeln('Beasiswa Sebagian');
end
else if ipk < 2.75 then
begin
writeln('IPK Tidak Memenuhi Syarat');
end
else if penghasilan > 7000000 then
begin
writeln('Penghasilan Tidak Memenuhi Syarat');
end
else
begin
writeln('Tidak Mendapatkan Beasiswa');
end;
end.