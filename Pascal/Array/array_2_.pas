PROGRAM LATIHAN;
USES WINCRT;
VAR A:ARRAY[1..3,1..5] OF INTEGER;
    X,Y,BARIS,KOLOM: INTEGER;

BEGIN
     FOR KOLOM:=0 TO 4 DO
     BEGIN
          FOR BARIS:=0 TO 2 DO
              BEGIN
              WRITE(' MASUKAN ANGKA DALAM MATRIKS KE [',BARIS,'][',KOLOM,'] :');READLN(A[BARIS,KOLOM]);
              END;
     END;
END.