
--创建链接服务器，远程执行数据库的存储过程
exec sp_addlinkedserver 'TestServer','','SQLOLEDB','120.76.41.xx'
exec sp_addlinkedsrvlogin 'TestServer','false',null,'sa','pwd'
exec sp_serveroption 'TestServer','rpc out','true' --这个允许调用链接服务器上的存储过程

--查询已有链接服务器
 select * from sys.servers

--调用远程服务器存储过程：
exec TestServer.数据库名.dbo.过程名 '参数'

--demo:
select * from TestServer.TestDB.dbo.regcard where s_print_no = '17376852911'
select * from [120.76.42.118]].TestDB.dbo.regcard where s_print_no = '17376852911'

declare @as_error varchar(200)
exec TestServer.TestDB.dbo.Usp_Insert_cardaccount3 '', '11', '消费', @as_error output
select @as_error
