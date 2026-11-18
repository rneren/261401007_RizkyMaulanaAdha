program radit;
uses crt;

type
  MataKuliah = record
    namaMK: string[50];
    sks: integer;
    nilaiHuruf: string[2];
    bobot: real;
  end;

  Mahasiswa = record
    nama: string[50];
    nim: string[20];
    jmlMK: integer;
    daftarMK: array[1..20] of MataKuliah;
  end;

var
  mhs: array[1..50] of Mahasiswa;
  jmlMhs, i, j: integer;

function KonversiNilai(nh: string): real;
var
  huruf: string;
begin
  huruf := UpCase(nh);
  if huruf = 'A' then
    KonversiNilai := 4.0
  else if huruf = 'B+' then
    KonversiNilai := 3.5
  else if huruf = 'B' then
    KonversiNilai := 3.0
  else if huruf = 'C+' then
    KonversiNilai := 2.5
  else if huruf = 'C' then
    KonversiNilai := 2.0
  else if huruf = 'D' then
    KonversiNilai := 1.0
  else
    KonversiNilai := 0.0;
end;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa: ');
  readln(jmlMhs);
  writeln;

  for i := 1 to jmlMhs do
  begin
    writeln('=== Data Mahasiswa ke-', i, ' ===');
    write('Nama Mahasiswa    : ');
     readln(mhs[i].nama);
    write('NIM               : ');
     readln(mhs[i].nim);
    write('Jumlah Mata Kuliah: ');
     readln(mhs[i].jmlMK);

    for j := 1 to mhs[i].jmlMK do
    begin
      writeln('  -> Mata Kuliah ke-', j);
      write('     Nama Mata Kuliah       : ');
       readln(mhs[i].daftarMK[j].namaMK);
      write('     Jumlah SKS             : ');
       readln(mhs[i].daftarMK[j].sks);
      write('     Nilai (A/B+/B/C+/C/D/E): ');
       readln(mhs[i].daftarMK[j].nilaiHuruf);
      
      mhs[i].daftarMK[j].bobot := KonversiNilai(mhs[i].daftarMK[j].nilaiHuruf);
    end;
    writeln;
  end;

  for i := 1 to jmlMhs do
  begin
    clrscr;
    writeln('KARTU HASIL STUDI MAHASISWA');
    writeln('Nama : ', mhs[i].nama);
    writeln('NIM  : ', mhs[i].nim);
    writeln('No  Nama Mata Kuliah      SKS  Nilai  Bobot');

    for j := 1 to mhs[i].jmlMK do
    begin
      writeln(j:2, ' | ', 
              mhs[i].daftarMK[j].namaMK:-22, ' ',
              mhs[i].daftarMK[j].sks:3, ' ',
              UpCase(mhs[i].daftarMK[j].nilaiHuruf):-5, '  ', 
              mhs[i].daftarMK[j].bobot:4:1);
    end;
    
    if i < jmlMhs then
      writeln('Tekan tombol Enter untuk melihat mahasiswa berikutnya...')
    else
      writeln('Semua data telah ditampilkan. Tekan Enter untuk keluar...');
    readln;
  end;
end.