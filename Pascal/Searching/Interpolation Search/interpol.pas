PROGRAM INTERPOLASI;
USES WINCRT;

TYPE MATRIX =  ARRAY[1..50] OF INTEGER;

PROCEDURE INPUT(VAR N: INTEGER; VAR DATA:MATRIX);
VAR I:INTEGER;
BEGIN
   WRITELN('--------------------------------------');
   WRITELN('           INTERPOLATION SEARCH       ');
   WRITELN('--------------------------------------');
   RANDOMIZE;
   WRITE ('MASUKKAN BANYAK DATA : '); READLN (N);
   WRITE('DATA INPUT = ');
    FOR I:= 1 TO N DO
    BEGIN
      DATA[I]:=RANDOM(50);
      WRITE(' ',DATA[I],' ');
    END;WRITELN;
END;             
{PROCEDURE INSERT;
VAR     MIN,I,N,J,URUT,K : INTEGER;
        L,M:STRING;
        DATA :ARRAY[1..50] OF INTEGER;
BEGIN
URUT:= 1;
        FOR I:= 1 TO N-1 DO
        BEGIN
        MIN:=I;
                FOR J:= URUT TO N DO
                BEGIN
                        IF DATA[J] < DATA[MIN] THEN
                        MIN:=J;

                        IF DATA[I] <> DATA[MIN] THEN
                        BEGIN
                        K:= DATA[I];
                       END;

                        IF DATA[I] > DATA[MIN]  THEN
                        BEGIN
                                DATA[I] := DATA[MIN];
                                DATA[MIN]:= K;
                        END;
                END;
        URUT:=URUT+1;
        END;
END;}

FUNCTION URUTKAN(N: INTEGER; DATA :MATRIX; VAR URUT:MATRIX):INTEGER;
VAR I,J,Y: INTEGER;
BEGIN
    FOR I:= 1 TO N DO
    BEGIN

        FOR J:= 1 TO N DO
        BEGIN
            Y:=DATA[I];
            DATA[I]:=DATA[J];
            DATA[J]:=Y;

    
        END;
    END;
    URUT:=DATA;
END;

PROCEDURE CETAK(N : INTEGER; DATA : MATRIX);
VAR I: INTEGER;
BEGIN
   WRITE('DATA ASCENDING = ');
   FOR I:=1 TO N DO
   WRITE(' ',DATA[I], ' ');
   WRITELN;
END;

FUNCTION CARI(VAR CARI:INTEGER):INTEGER;
BEGIN
   WRITE('TENTUKAN DATA YANG DICARI = ');READLN(CARI);
   WRITELN;
END;

PROCEDURE CARIDATA(N,CARI: INTEGER; DATA:MATRIX);
VAR L,H,T,POS : INTEGER; P:REAL;
LABEL SELESAI;
BEGIN
   L:=1; H:=N; T:=0;
   WHILE (DATA[L]<=CARI) AND (DATA[H]>=CARI) DO
   BEGIN
      P:=L+((CARI-DATA[L])/(DATA[H]-DATA[L]))*(H-L);
      POS:= ROUND(P);
      IF DATA[POS]=CARI THEN
        BEGIN
           T:=1;
           GOTO SELESAI;
        END;
       BEGIN
       IF DATA[POS]>CARI THEN
          H:=POS-1
       
       ELSE 
          L:=POS+L
       END;
       IF L>H THEN GOTO SELESAI;
   END;
        SELESAI:
            IF T=1 THEN WRITE('DATA TERSEDIA')
              ELSE WRITE('DATA TIDAK TERSEDIA');
   WRITELN;
  END;



VAR A,B : MATRIX;
    N,C: INTEGER;
    YA : CHAR;
BEGIN
  YA:='y';
  
  WHILE YA='y' DO
  BEGIN
    CLRSCR;
    INPUT(N,A);
    URUTKAN(N,A,B);
    CETAK(N,B);
    CARI(C);
    CARIDATA(N,C,B);
    WRITE('ULANGI ? (y/T) : ');READLN(YA);
  END;
END.
