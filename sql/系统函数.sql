--ϵͳ����
--RTRIM ȥ��β���ո�
--LTRIM ȥ��ͷ���ո�

SELECT RTRIM('�й� ')
SELECT LTRIM(' �й�')

--ISNULL(a,b) a:��ǰ�ж��Ƿ�Ϊ�յ�ֵ��b:��aΪ��ʱ����a��ֵ��
--wechatid =nullʱ =>'22'
SELECT ISNULL(WeChatId,'22') From TicketBill_hd where s_bill_no = '0000000509'  
--wechatid =''ʱ =>''����wechatid='xx'�Ȳ�Ϊnull��ֵʱ =>'xx'
SELECT ISNULL(WeChatId,'') From TicketBill_hd where s_bill_no = '0000000509' 
SELECT ISNULL(WeChatId,'22') From TicketBill_hd where s_bill_no = '0000000509'  

if exists(Select 1 From TicketBill_hd where s_bill_no = '0000000509' and ISNULL(WeChatId, '') = '')
BEGIN
SELECT 1
END
ELSE
SELECT 0

select convert(datetime,convert(varchar(10),getdate(),23))	--2018-09-12 00:00:00.000
select convert(varchar(10),getdate(),23)    --2018-09-12

--SQL Server DATEDIFF() ����
--�﷨��DATEDIFF(datepart,startdate,enddate)
--���壺������������֮���ʱ�䣬����һ�������ֵ��enddate - startdate��������
--������startdate �� enddate �����ǺϷ������ڱ��ʽ��startdate < enddate ����������startdate > enddate ���ظ�����
--datepart ���������������е�����һ����������ȫд���д����
--��	    yy, yyyy,year
--����	    qq, q
--��	    mm, m
--���е���	dy, y
--��	    dd, d
--��	    wk, ww
--����	    dw, w
--Сʱ	    hh,hour
--����	    mi, n,minute
--��	    ss, s
--����	    ms
--΢��	    mcs
--����	    ns
select DATEDIFF(HH,'2018-10-11 14:30:42.473',GETDATE()) as DiffHour--Сʱ
select DATEDIFF(MI,'2018-10-11 14:30:42.473',GETDATE()) as DiffMin--����
