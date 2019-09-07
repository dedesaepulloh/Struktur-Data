program shellsort;

uses
  WinCrt;

const
maks =10;
type
larik =array[1..maks] of integer;
var
data : larik;
procedure inisialisasi_data(var D : larik ; N : integer);
var
i : integer;
begin
for i := 1 to N do
begin
D[i] := random(7);
end;
end;
procedure tampil_hasil(hasil : larik ; n : integer);
 var
i : integer;
begin
for i:=1 to n do
begin
write(hasil[i],' ');
end;
end;
procedure tukar_data(var data1,data2: integer);
var
   bantu : integer;
   begin
   bantu := data1;
   data1:=data2;
   data2:=bantu;
   end;

   procedure metode_shellsort(var A : larik; n : integer);
   var
   i,j,jarak : integer;
   begin
   jarak:= n div 2;
   while jarak >0 do
   begin
   for i :=1 to n - jarak do
   begin
   j := i+jarak;
   if A[i]>A[j] then
   tukar_data(A[i],A[j])
   end;
   jarak:=jarak div 2
   end
   end;
   
begin
  randomize ;
  inisialisasi_data (data,maks);
  writeln (' --------------------------');
  writeln('| data sebelum di sorting |');
  writeln (' --------------------------');
  tampil_hasil(data,maks);
  writeln;
  writeln;
  writeln (' ----------------------------------');
  metode_shellsort(data,maks);
  writeln('| hasil sorting metode shell sort |');
  writeln (' ----------------------------------');
  tampil_hasil(data,maks);
  readln;
  end.
