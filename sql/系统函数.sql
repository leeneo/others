--系统函数
--RTRIM 去掉尾部空格
--LTRIM 去掉头部空格

SELECT RTRIM('中国 ')
SELECT LTRIM(' 中国')

--ISNULL(a,b) a:当前判断是否为空的值，b:当a为空时赋给a的值。
--wechatid =null时 =>'22'
SELECT ISNULL(WeChatId,'22') From TicketBill_hd where s_bill_no = '0000000509'  
--wechatid =''时 =>''；或wechatid='xx'等不为null的值时 =>'xx'
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