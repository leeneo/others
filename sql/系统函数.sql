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