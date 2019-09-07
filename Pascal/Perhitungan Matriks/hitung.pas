PROGRAM MATRIKS;
USES WINCRT;
VAR I,J,K : INTEGER;
    A,B,C : ARRAY[1..3,1..3] OF INTEGER;
    PILIH : CHAR;

PROCEDURE INPUT_MATRIKS;
          BEGIN
          CLRSCR;

          FOR I:=1 TO 3 DO

              FOR J:=1 TO 3 DO
              BEGIN
              WRITE('MASUKAN MATRIKS A [',I,'][',J,']  : '); READLN(A[I,J]);
              END;

          WRITELN;
          FOR I:=1 TO 3 DO

              FOR J:=1 TO 3 DO
              BEGIN
              WRITE('MASUKAN MATRIKS B [',I,'][',J,']  : '); READLN(B[I,J]);
              END;

          END;

PROCEDURE PENJUMLAHAN;
          BEGIN
          FOR I:=1 TO 3 DO
              FOR J:=1 TO 3 DO
              C[I,J]:=A[I,J]+B[I,J];
          END;

PROCEDURE PENGURANGAN;
          BEGIN
          FOR I:=1 TO 3 DO
              FOR J:=1 TO 3 DO
              C[I,J]:=A[I,J]-B[I,J];
          END;

PROCEDURE PERKALIAN;
          BEGIN
          FOR I:=1 TO 3 DO
              FOR J:=1 TO 3 DO
                  FOR K:=1 TO 3 DO
              C[I,J]:=C[I,J]+A[I,J]*B[I,J];

          END;

PROCEDURE OUTPUT_MATRIKS;
          BEGIN
          CLRSCR;
          WRITELN('MATRIKS A : ');
          FOR I:=1 TO 3 DO
              BEGIN
                   FOR J:=1 TO 3 DO
                   WRITE(' ',A[I,J],' ');
                   WRITELN;
              END;
          WRITELN;

          WRITELN('MATRIKS B : ');
          FOR I:=1 TO 3 DO
              BEGIN
                   FOR J:=1 TO 3 DO
                   WRITE(' ',B[I,J],' ');
                   WRITELN;
              END;
          WRITELN;

          WRITELN('MATRIKS C : ');
          FOR I:=1 TO 3 DO
              BEGIN
                   FOR J:=1 TO 3 DO
                   WRITE(' ',C[I,J],' ');
                   WRITELN;
              END;
          READLN;
          END;

PROCEDURE MENU;
          BEGIN
          REPEAT
          CLRSCR;
          WRITELN('>======================================<');
          WRITELN('>              MENU UTAMA              <');
          WRITELN('>--------------------------------------<');
          WRITELN('>1.PENJUMLAHAN                         <');
          WRITELN('>2.PENGURANGAN                         <');
          WRITELN('>3.PERKALIAN                           <');
          WRITELN('>X.KELUAR                              <');
          WRITELN('>--------------------------------------<');
          WRITELN('>MASUKAN PILIHAN :                     <');
          WRITELN('>======================================<');
          GOTOXY(21,9);READLN(PILIH);
          CASE PILIH OF
          '1': BEGIN
          INPUT_MATRIKS;
          PENJUMLAHAN;
          GOTOXY(10,1);WRITELN('PENJUMLAHAN MATRIKS');
          OUTPUT_MATRIKS;
          END;

          '2': BEGIN
          INPUT_MATRIKS;
          PENGURANGAN;
          GOTOXY(10,1);WRITELN('PENGURANGAN MATRIKS');
          OUTPUT_MATRIKS;
          END;

          '3': BEGIN
          INPUT_MATRIKS;
          PERKALIAN;
          GOTOXY(10,1);WRITELN('PERKALIAN MATRIKS');
          OUTPUT_MATRIKS;
          END;
          END;
          UNTIL (PILIH='X') OR (PILIH='x');
          END;
BEGIN
MENU;
END.
          
