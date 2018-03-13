use master

sp_detach_db @dbname='newhotel_xyjd'

CREATE DATABASE newhotel_xyjd
ON PRIMARY (FILENAME = 'D:\data\newhotel_xyjd.mdf') 
FOR ATTACH 
GO

EXEC sp_attach_db @dbname = N'pubs', 
@filename1 = N'D:\data\newhotel_xyjd.mdf', 
@filename2 = N'D:\data\newhotel_xyjd_log.ldf'