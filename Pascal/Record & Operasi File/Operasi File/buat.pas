PROGRAM BUATFILE;
USES WINCRT;
VAR
TIPEFILE : TEXT;

BEGIN
CLRSCR;

ASSIGN(TIPEFILE,'STMIK.TXT');
REWRITE(TIPEFILE);
WRITELN(TIPEFILE,'STMIK TASIKMALAYA');

CLOSE(TIPEFILE);
END.