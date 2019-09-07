PROGRAM LATIHANQUEUE;
USES WINCRT;
VAR
QUEUE:ARRAY[1..10] OF INTEGER;
I,POS,PIL:INTEGER;

PROCEDURE ENQUEUE;
VAR BIL:INTEGER;
BEGIN
     CLRSCR;

     IF POS >= 10 THEN
        BEGIN
             WRITELN('ANTRIAN PENUH');
        END

     ELSE
         BEGIN
              WRITE('MASUKAN BILANGAN : ');READLN(BIL);
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
VAR I : INTEGER;
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

     IF POS=0
