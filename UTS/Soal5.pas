program Misi;
uses crt;

var
  nama: string;
  n, i, j: integer;
  labelAngka: string;

begin
  clrscr;
  write('Masukkan nama: ');
  readln(nama);
  write('Masukkan n: ');
  readln(n);

  writeln;
  writeln(nama, ', inilah pola angka rahasiamu:');
  writeln;

  i := 1;
  while i <= n do
  begin
    if i mod 2 = 0 then
      labelAngka := 'genap'
    else
      labelAngka := 'ganjil';

    j := 1;
    while j <= i do
    begin
      write(i, ' (', labelAngka, ') ');
      j := j + 1;
    end;

    writeln;
    i := i + 1;
  end;

  writeln('Selamat, ', nama, '! Kamu berhasil membuka pintu rahasia ke level berikutnya!');

  readln;
end.
