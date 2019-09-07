program SelectionSort;
uses WinCrt;
type Array100 = array [1..100] of integer;
var
Data: Array100;
DataCount: Integer;

procedure InputData(var d: Array100; var c: Integer);
var
Code, k: Integer;
i: String;
begin
k := 1;

Writeln('Selection Sort');
Writeln('--------------');
Writeln;

repeat 
Write('Masukkan angka ke-',k,' : ');readln(i);
if(i <> '') then
begin
Val(i,d[k],Code);
if(Code <> 0) then
d[k] := 0;
end;
Inc(k);
until (k > 100) or (i = '');
c := k - 2;
end;

procedure Swap(var a,b: Integer);
var
t: Integer;
begin
t := a;
a := b;
b := t; 
end;

procedure Sorting(var d: Array100; c: Integer);
var
lok, i, j: Integer;
begin
for i:= 1 to c-1 do
begin
lok := i; 
for j:=i+1 to c do
if(d[j] < d[lok])
 then
 lok := j; Swap(d[i],d[lok]);
 end;
 end;
procedure Tampil(d: Array100; c: Integer);
var i: Integer; begin
for i:=1 to c do Write(d[i]:5); Writeln;
 end;
  begin InputData(Data, DataCount);
 Writeln; Writeln('Sebelum diurutkan'); Tampil(Data,DataCount); Sorting(Data,DataCount);
 Writeln; Writeln('Sesudah diurutkan'); Tampil(Data,DataCount);
 end.
