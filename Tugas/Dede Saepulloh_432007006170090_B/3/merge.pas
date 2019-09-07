program merge_sort_data_array_gurisa_com;
 
uses wincrt;
 
const
     max = 10;
 
type
    larik = array[1..max] of integer;
 
var
    data:larik;
    tahap, langkah, p:integer;
    ulang:char;
 
    procedure insert_data(var data:larik);
 
    var
         i:integer;
 
    begin
         randomize;
         for i := 1 to max do
         begin
              data[i] := random(100);
         end;
    end;
 
    procedure show_data(data:larik);
 
    var
         i:integer;
 
    begin
         for i := 1 to max do
         begin
              write(data[i], ' ');
         end;
    end;
 
    procedure merge(var data:larik; var langkah:integer; awal, tengah, akhir:integer);
 
    var
		 k, i, j, l:integer;
		 data_temp:larik;
 
    begin
		 i := awal;
		 j := tengah + 1;
		 k := awal;
		 repeat
			   if (data[i] <= data[j]) then
			   begin
				    data_temp[k] := data[i];
			        inc(i);
			   end
			   else
			   begin
				    data_temp[k] := data[j];
				    inc(j);
			   end;
 
			   inc(k);
               inc(langkah);
         until (i > tengah) or (j > akhir);
 
         if (i > tengah) then
         begin
			  for l := j to akhir do
			  begin
				   data_temp[k] := data[l];
				   inc(k);
			  end;
         end
		 else
		 begin
			  for l := i to tengah do
			  begin
				   data_temp[k] := data[l];
				   inc(k);
			  end;
		 end;
		 for k := awal to akhir do
		 begin
			  data[k] := data_temp[k];
		 end;
    end;
 
    procedure merge_sort(var data:larik; awal, akhir:integer);
 
    var
         tengah:integer;
 
    begin
		 inc(p);
		 if (awal < akhir) then
		 begin
			  tengah := (awal + akhir) div 2;
			  merge_sort(data, awal, tengah);
			  merge_sort(data, tengah + 1, akhir);
			  merge(data,langkah, awal, tengah, akhir);
              
              inc(tahap);
              gotoxy(37,11+tahap+langkah);write('TAHAP ',tahap);
		      gotoxy(25,12+tahap+langkah);show_data(data);
		 end;
    end;
 
begin
     repeat
           gotoxy(30,2);write('      MERGE SORT');
           gotoxy(30,3);write('~~~~~~~~~~~~~~~~~~~~~');
           gotoxy(29,5);write('DATA SEBELUM DIURUTKAN');
           insert_data(data);
           gotoxy(25,7);
           show_data(data);
           gotoxy(29,10);write('PROSES PENGURUTAN DATA');
           merge_sort(data, 1, max);
           gotoxy(29,14+tahap+langkah);write('DATA SESUDAH DIURUTKAN');
           gotoxy(25,16+tahap+langkah);show_data(data);
           gotoxy(16,18+tahap+langkah);write('Pengurutan Terdiri Dari : ',tahap, ' Tahap & ',langkah,' Langkah');
           gotoxy(22,20+tahap+langkah);write('Ulangi Proses Pengurutan [Y/T] : ');readln(ulang);
           clrscr;
     until (ulang = 'T') or (ulang = 't');
end.