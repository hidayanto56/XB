select KodeMK, Kelas, NamaMK, Dosen.Nama, sks, SUBSTRING(Matkul.KodeMK,6,1) as Semester
from Matkul join Dosen on id = id_dosen order by Semester,Kelas
