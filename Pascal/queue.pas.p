PROGRAM LATIHANQUEUE;
USES WINCRT;
VAR QUEUE:ARRAY[1..10] OF INTEGER;
    I,POS,PIL:INTEGER;

PROCEDURE ENQUEUE;
VAR BIL:INTEGER;
BEGIN
     CLRSCR;
     IF POS>=10 THEN
     BEGIN
          WRITELN('ANTRIAN PENUH');
     END
     ELSE
     BEGIN
          WRITE('MASUKAN BILANGAN :');READLN(BIL);
          POS:=POS+1;
          QUEUE[POS]:=BIL;
     END;
END;


PROCEDURE DEQUEUE;
BEGIN
     CLRSCR;
     IF POS=0 THEN
     BEGIN
          WRITELN('TIDAK ADA ANTRIAN');
     END
     ELSE
     BEGIN
          POS:=POS-1;
          FOR I:=1 TO POS DO
          BEGIN
          QUEUE[I]:=QUEUE[I+1];
          END;
     END;
END;


PROCEDURE ISEMPTY;
VAR I:INTEGER;
BEGIN
     CLRSCR;
     IF POS=0 THEN
     BEGIN
          WRITELN('TIDAK ADA ANTRIAN');
     END
     ELSE
     BEGIN
          FOR I:=1 TO POS DO
          BEGIN
               QUEUE[I]:=-1;
          END;
          POS:=0;
     END;
END;

PROCEDURE CETAKQUEUE;
VAR K,L:INTEGER;
BEGIN
     CLRSCR;
     IF POS=0 THEN
     BEGIN
          WRITELN('TIDAK ADA ANTRIAN');
     END
     ELSE
     BEGIN
          L:=1;
          FOR K:=POS DOWNTO 1 DO
          BEGIN
               GOTOXY(K*3,1);WRITE(QUEUE[L]);
               L:=L+1;
               END;
               READLN;
          END;
     END;
BEGIN
     CLRSCR;
     FOR I:=1 TO 10 DO
     BEGIN
          QUEUE[I]:=-1
     END;

     POS:=0;

     WHILE PIL<>5 DO
     BEGIN
          CLRSCR;
          WRITELN('MENU');
          WRITELN('____________');
          WRITELN('1. OPERASI ENQUEUE');
          WRITELN('2. OPERASI DEQUEUE');
          WRITELN('3. KOSONGKAN QUEUE');
          WRITELN('4. CETAK QUEUE');
          WRITELN('5. KELUAR');
          WRITE('PILIH PERINTAH: ');READLN(PIL);

          CASE PIL OF
          1:ENQUEUE;
          2:DEQUEUE;
          3:ISEMPTY;
          4:CETAKQUEUE;
          5:ENQUEUE;

     END;
END;
END.