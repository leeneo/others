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

--SQL Server DATEDIFF() 函数
--语法：DATEDIFF(datepart,startdate,enddate)
--定义：返回两个日期之间的时间，返回一个代表差值（enddate - startdate）的整数
--参数：startdate 和 enddate 参数是合法的日期表达式；startdate < enddate 返回正数，startdate > enddate 返回负数；
--datepart 参数（可以下列中的任意一个，可以是全写或简写）：
--年	    yy, yyyy,year
--季度	    qq, q
--月	    mm, m
--年中的日	dy, y
--日	    dd, d
--周	    wk, ww
--星期	    dw, w
--小时	    hh,hour
--分钟	    mi, n,minute
--秒	    ss, s
--毫秒	    ms
--微妙	    mcs
--纳秒	    ns
select DATEDIFF(HH,'2018-10-11 14:30:42.473',GETDATE()) as DiffHour--小时
select DATEDIFF(MI,'2018-10-11 14:30:42.473',GETDATE()) as DiffMin--分钟
