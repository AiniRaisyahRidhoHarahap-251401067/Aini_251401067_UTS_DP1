program SewaMobil;
uses crt;

var
    mobil: string;
    hari, jarak: integer;
    nHari, nJarak, nTotal: longint;
    tarifMobil, tarifJarak: longint;

begin
clrscr;
    write('HITUNG BIAYA SEWA MOBIL');

    writeln;
    write('Masukkan jenis mobil (Ekonomi/Sedan/SUV): ');
    readln(mobil);

    if (mobil = 'Ekonomi') or (mobil = 'ekonomi') then
    tarifMobil := 300000
    else if (mobil = 'Sedan') or (mobil = 'sedan') then
    tarifMobil := 400000
    else if (mobil = 'SUV') or (mobil = 'suv') then
    tarifMobil := 500000
    else
        begin
        writeln('Mobil apa deh?');
        halt;
        end;

    write('Pemesanan berapa hari: ');
    readln(hari);

    write('Berkendara seberapa jauh (km): ');
    readln(jarak);

    if (jarak <= 100) then
    nJarak := jarak * 1500
    else if (jarak <= 200) then
    nJarak := (100 * 1500) + ((jarak - 100) * 1000)
    else if (jarak > 200) then
    nJarak := (100 * 1500) + (100 * 1000) + ((jarak - 200) * 500)
    else
        begin
        nJarak := 0;
        end;

    nHari := tarifMobil * hari;
    nTotal := nHari + nJarak;

    writeln;
    writeln('Total: ', nTotal);
    readln;

    end.

    
    
