
--�������ӷ�������Զ��ִ�����ݿ�Ĵ洢����
exec sp_addlinkedserver 'TestServer','','SQLOLEDB','120.76.41.xx'
exec sp_addlinkedsrvlogin 'TestServer','false',null,'sa','pwd'
exec sp_serveroption 'TestServer','rpc out','true' --�������������ӷ������ϵĴ洢����

--��ѯ�������ӷ�����
 select * from sys.servers

--����Զ�̷������洢���̣�
exec TestServer.���ݿ���.dbo.������ '����'

--demo:
select * from TestServer.TestDB.dbo.regcard where s_print_no = '17376852911'
select * from [120.76.42.118]].TestDB.dbo.regcard where s_print_no = '17376852911'

declare @as_error varchar(200)
exec TestServer.TestDB.dbo.Usp_Insert_cardaccount3 '', '11', '����', @as_error output
select @as_error
