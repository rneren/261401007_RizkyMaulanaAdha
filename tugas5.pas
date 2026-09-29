{Nama: Rizky Maulana Adha

NIM: 261401007

KOM: B}

program PemesananMakanan;

var
  kode, jumlah, status: integer;
  harga, total, diskon, bayar: real;

begin
  writeln('=== SISTEM PEMESANAN MAKANAN ===');
  writeln('1. Nasi Goreng - Rp20.000');
  writeln('2. Mie Goreng  - Rp18.000');
  writeln('3. Ayam Geprek - Rp25.000');
  writeln('4. Steak       - Rp50.000');

  write('Masukkan kode makanan (1-4): ');
  readln(kode);

  write('Masukkan jumlah pesanan: ');
  readln(jumlah);

  write('Status pelanggan (1=Member, 2=Non-member): ');
  readln(status);

  { Menentukan harga makanan }
  case kode of
    1: harga := 20000;
    2: harga := 18000;
    3: harga := 25000;
    4: harga := 50000;
  end;

  { Mengecek jumlah pesanan }
  if jumlah = 0 then
    writeln('Jumlah pesanan tidak valid')
  else if jumlah > 10 then
    writeln('Pesanan terlalu banyak')
  else
  begin
    total := harga * jumlah;

    { Menentukan diskon }
    if status = 1 then
    begin
      if total >= 100000 then
        diskon := total * 0.15
      else if total >= 50000 then
        diskon := total * 0.10
      else
        diskon := total * 0.05;
    end
    else
    begin
      if total >= 100000 then
        diskon := total * 0.05
      else
        diskon := 0;
    end;

    bayar := total - diskon;

    writeln;
    writeln('Harga makanan : Rp', harga:0:0);
    writeln('Total harga   : Rp', total:0:0);
    writeln('Diskon        : Rp', diskon:0:0);
    writeln('Total bayar   : Rp', bayar:0:0);
  end;
end.