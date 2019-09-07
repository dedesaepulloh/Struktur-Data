Program Heap_Sort;

uses wincrt;
type SArray = array [0..100] of string;
var n,i: integer;
    A: SArray;


procedure swap ( var a, b: string );
var temp: string;
begin

        temp := a;
        a := b;
        b := temp;
end;


procedure siftDown ( var A: SArray; start, akhir: integer );
var root, child: integer;
begin

        root := start;
        while ( root * 2 + 1 <= akhir ) do
        begin
            child := root * 2 + 1;
            if ( child < akhir ) and ( A[child] < A[child + 1] ) then
                 child := child + 1;

            if ( A[root] < A[child] ) then
            begin
                 swap ( A[root], A[child] );
                 root := child;
            end
            else
        end;
end;



procedure heapify ( var A: SArray; count: integer );
var start: integer;
begin

        start := (count - 1) div 2;
        while ( start >= 0 ) do
        begin
                siftDown (A, start, count-1);
                start := start - 1;
        end;
end;



procedure heapSort( var A: SArray; n: integer );
var akhir: integer;
begin
        heapify ( A, n );
        akhir:= n - 1;

        while ( akhir > 0 ) do
        begin
             swap( A[akhir],A[1]);
             akhir := akhir - 1;
             siftDown (A, 0, akhir);
        end;
end;


begin
clrscr;
        gotoxy(17,1);writeln('Program Sorting Secara Ascending');
        gotoxy(17,2);writeln('  Menggunakan Metode Heap Sort  ');
        writeln; writeln;

        write ( 'Inputkan Jumlah Data : ' ); readln (n);
        writeln;
                for i := 0 to n-1 do
                begin
                         write('Nama ke-',i+1:2,' : ');
                         readln(A[i]);
               end;
        writeln('---------------------------------------');

        heapSort ( A, n );
        writeln;
        writeln('Data setelah diurutkan  ');
        writeln;
                 for i := 0 to n-1 do
                 begin
                         writeln ('Nama ke-',i+1:2,' : ',A[i]);
                 end;
readkey;
end.