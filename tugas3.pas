{Nama: Rizky Maulana Adha
NIM: 261401007

KOM: B}

program TiketBioskop;

var
jenis, hari, jumlah: integer;
harga, total, diskon, bayar: real;

begin
writeln('=== PEMBELIAN TIKET BIOSKOP ===');
writeln('1. Reguler - Rp30.000');
writeln('2. 3D - Rp45.000');
writeln('3. IMAX - Rp60.000');

write('Masukkan jenis film (1-3): ');
readln(jenis);

write('Masukkan hari (1=Senin-Kamis, 2=Jumat, 3=Sabtu-Minggu): ');
readln(hari);

write('Masukkan jumlah tiket: ');
readln(jumlah);

case jenis of
1: harga := 30000;
2: harga := 45000;
3: harga := 60000;
end;

if hari = 2 then
harga := harga + 5000
else if hari = 3 then
harga := harga + 10000;

total := harga * jumlah;

if total >= 200000 then
diskon := total * 0.10
else if total >= 100000 then
diskon := total * 0.05
else
diskon := 0;

bayar := total - diskon;

writeln;
writeln('Harga awal : Rp', total:0:0);
writeln('Diskon : Rp', diskon:0:0);
writeln('Total bayar : Rp', bayar:0:0);
end.