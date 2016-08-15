insert into usr(npm, psd) select npm,SUBSTRING(LOWER (REPLACE(nama,' ','')),1,6)+'pass' from Mahasiswa

update USR set Pos='A' where Pos is null

truncate table usr