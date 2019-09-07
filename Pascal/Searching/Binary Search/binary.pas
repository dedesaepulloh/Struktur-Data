PROGRAM BINARY_SEARCH;
USES WINCRT;
VAR
    CARI        : INTEGER;
    N,I,J,INDEKS: INTEGER;
    DATA        : ARRAY[1..100] OF INTEGER;

FUNCTION BINARY(CARI: INTEGER):INTEGER;
VAR
        AWAL,AKHIR,TENGAH: INTEGER;
        KETEMU:BOOLEAN;
        INDEKSXX: INTEGER;
BEGIN
        AWAL:= 1;
        AKHIR:= N;
        KETEMU :=FALSE;
        INDEKSXX := 0;
        WHILE ((AWAL <= AKHIR) AND (NOT KETEMU)) DO
        BEGIN
                TENGAH:= (AWAL+AKHIR) DIV 2;
                IF CARI = DATA[TENGAH] THEN
                BEGIN
                        KETEMU := TRUE;
                        INDEKSXX := TENGAH;
                END
                ELSE
                BEGIN
                        IF CARI < DATA[TENGAH] THEN
                        AKHIR :=  TENGAH-1
                        ELSE
                        AWAL := TENGAH+1;
                END;
        END;
        BINARY:=INDEKSXX;
END;


PROCEDURE INSERT;
VAR     MIN,URUT,K : INTEGER;
        L,M:STRING;
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
END;

PROCEDURE MAIN;
BEGIN   WRITELN('--------------------------------------');
        WRITELN('           PENCARIAN BINARY             ');
        WRITELN('--------------------------------------');
        WRITE('JUMLAH DATA : '); READLN(N);
        WRITELN;
                FOR I:= 1 TO N DO
                BEGIN
                WRITE('INDEKS [',I,'] : '); READLN(DATA[I]);
                END;
                WRITELN;
        INSERT;
        WRITE('DATA SETELAH DIURUTKAN : ');
        FOR I:= 1 TO N DO
        WRITE(DATA[I]:2);

        WRITELN;
        WRITELN;
        WRITE('CARI     : '); READLN(CARI);
        INDEKS:=BINARY(CARI);
        WRITELN;
        IF INDEKS <> 0 THEN
        BEGIN
                WRITELN('DATA YANG DICARI : ',CARI);
                WRITELN('DITEMUKAN PADA INDEKS KE-',INDEKS, ' SETELAH DIURUTKAN');
        END
        ELSE
                WRITE(CARI,' TIDAK DITEMUKAN');
END;

BEGIN
MAIN;
END.