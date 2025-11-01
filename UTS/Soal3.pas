program JonodanHitungAngka;
uses crt;

var
    n, i, j, total: integer;
    rata: real;

begin
clrscr;
total := 0;

write('Masukkan angka N: ');
readln(n);

writeln;

for i := 1 to n do
    begin
    write('Angka ke-', i,' : ');
    readln(j);
    total := total + j;
    end;

rata := total/n;
writeln;

writeln('Jumlah total: ', total);
writeln('Rata-Rata: ', rata:0:1);
end.