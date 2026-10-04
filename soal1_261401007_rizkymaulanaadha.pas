program Soal1;

var
  N, i: integer;
  harga, total, diskon, bayar: real;

begin
  // Meminta jumlah barang
  write('Masukkan jumlah barang: ');
  readln(N);

  // Nilai awal total belanja
  total := 0;

  // Mengulang dari barang ke-1 sampai ke-N
  for i := 1 to N do
  begin
    // Memasukkan harga setiap barang
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);

    // Menambahkan harga ke total belanja
    total := total + harga;
  end;

  // Menentukan diskon berdasarkan total belanja
  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;

  // Menghitung total setelah diskon
  bayar := total - diskon;

  // Menampilkan hasil
  writeln;
  writeln('Total Belanja : Rp', total:0:2);
  writeln('Besar Diskon  : Rp', diskon:0:2);
  writeln('Total Bayar   : Rp', bayar:0:2);
end.