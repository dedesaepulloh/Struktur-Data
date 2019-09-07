program bsort_menaik;

uses wincrt;
var i,n,j : integer;
a: array [1..50] of integer;

procedure buble;
var z: integer;
begin
for i:=1 to n-1 do
begin
for j:=n downto i+1 do
begin
if a[j] < a[j-1] then
begin
z:=a[j];
a[j]:=a[j-1];
a[j-1]:=z;
end;
end;
end;
end;

begin
write (' Masukan banyakn larik (maks 50) : '); readln(n);
for i:= 1 to n do
begin write('A[',i,'] :'); readln(a[i]);
end;

buble;
write ('Data Telah Diurutkan :');

for j:=1 to n do
write (a[j],'');
end.