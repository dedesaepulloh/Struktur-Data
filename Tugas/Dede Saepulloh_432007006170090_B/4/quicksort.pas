Program Quik_Short;
Uses Wincrt;
Type
    Larik= Array[1..100] of Integer;
Var
   i,n : Integer;
   Data: Larik;
   ch  : String;

Procedure Input_Data;

Begin
clrscr;
                                                   
Writeln ('     Pengurutan Angka Dengan Metode Quik Short    ');
Writeln ('==================================================');
Writeln;
Writeln;
Write   ('Masukkan Jumlah Data : ');Readln(n);
Writeln ('=======================');
Writeln;
  For i := 1 To n Do
      Begin
      Write ('Data Ke-',i,' = ');Readln(Data[i]);
      End;
  Clrscr;
  Writeln;
  Writeln ('************************************');
  For i:= 1 To n Do
  Write(Data[i],'  ');

  Writeln;
  Writeln('*************************************');
  Writeln;
  Writeln;
  Writeln ;
  Writeln ('       Hasil Pengurutan Angka        ');
  Writeln ('=====================================');
  end;
Procedure Tukarkan (Var d,b : Integer);
Var
   t:integer;
Begin
     t:=d;
     d:=b;
     b:=t;
End;

Procedure QuickSort(Var A:Larik; aw,ak:Integer);
Var
   i,j: Integer;
Procedure Atur;

Begin
     I:= Aw + 1 ;
     J:= Ak ;

     While A[I] < A[Aw] do inc (I);
     While A[j] >A [Aw] do dec (J);
     While I < J do

     Begin
     Tukarkan (A[I],A[J]);
     while  A[I] < A[Aw] do inc(I);
     while A[J] > A[Aw] do dec(J);
     end;
    Tukarkan (A [Aw], A [J] )
END;
BEGIN
 IF Aw < Ak THEN
 BEGIN
  ATUR;
  QUICKSORT (A,Aw,J-1);
  QUICKSORT (A,J+1,Ak)
 END
END;



begin
     repeat
     input_data;
     quicksort(data,1,n);
     for i:=1 to n do
     write(data[i],'   ');
     begin
     end;
     writeln;
     writeln ('======================================');
     writeln;
     write('Input Ulang (Y/N)? ' );Readln(ch);
  
      writeln;
      until
      (ch='n') ;
     gotoxy(10,23);  writeln ('>>>>  Thank You   <<<<<<<<');
      readkey;
end.