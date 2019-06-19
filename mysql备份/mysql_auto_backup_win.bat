@echo off
set hour=%time:~0,2%
if "%time:~0,1%"==" " set hour=0%time:~1,1%
set now=%Date:~0,4%%Date:~5,2%%Date:~8,2%%hour%%Time:~3,2%%Time:~6,2%
echo %now%
set host=127.0.0.1
set port=3306
set user=root
set pass=fofiacard
set dbname=au_production
set backupfile=c:\db_autobackup\%dbname%-%now%.sql
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump" -h%host% -P%port% -u%user% -p%pass% -c --add-drop-table %dbname% > %backupfile%