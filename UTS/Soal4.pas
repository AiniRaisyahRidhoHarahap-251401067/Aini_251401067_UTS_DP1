program BilPrima;
uses crt;

var
  n, i, j, bagi: integer;

begin
  clrscr;
  write('Masukkan nilai n: ');
  readln(n);

  writeln;
  writeln('Bilangan prima antara 1 dan ', n, ' adalah:');

  for i := 2 to n do
  begin
    bagi := 0;
    for j := 1 to i do
    begin
      if (i mod j = 0) then
        bagi := bagi + 1;
    end;

    if (bagi = 2) then
      write(i, ' ');
  end;

  readln;
end.