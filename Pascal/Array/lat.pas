PROGRAM LATARRAY;
USES WINCRT;
VAR VNPM,VNAMA,VALMT,VJK:ARRAY [1..3] OF STRING;
    N,M:INTEGER;
BEGIN
     FOR M:=1 TO 3 DO
     BEGIN
          CLRSCR;
          WRITELN('         BIODATA MAHASISWA           ');
          WRITELN('=====================================');
          WRITE('NPM                 : ');READLN(VNPM[M]);
          WRITE('NAMA                : ');READLN(VNAMA[M]);
          WRITE('ALAMAT              : ');READLN(VALMT[M]);
          WRITE('JENIS KELAMIN (P/L) : ');READLN(VJK[M]);
     END;

     CLRSCR;
          WRITELN('       LAPORAN DATA MAHASISWA         ');
          WRITELN('======================================');
          WRITELN('NPM       NAMA        ALAMAT        JK');
          WRITELN('======================================');

     FOR N:=1 TO 3 DO
         WRITELN(VNPM[N],'         ',VNAMA[N],'        ',VALMT[N],'           ',VJK[N]);

END.