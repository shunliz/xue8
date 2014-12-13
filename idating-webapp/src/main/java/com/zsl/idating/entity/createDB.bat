set MySQL_HOME=C:\Program Files\MySQL\MySQL Server 5.1\
set PATH=%MySQL_HOME%\bin;%PATH% 
mysql --host=localhost --port=3306 --user=root --password=root --default-character-set=utf8 <CreateDb.sql
mysql --host=localhost --port=3306 --user=root --password=root --default-character-set=utf8 idating<Importdata.sql