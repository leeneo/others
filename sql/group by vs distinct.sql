
select count(s_room_no) as roomSum from room_state  WHERE s_floor = 16

select distinct s_floor as FloorNo,count(s_room_no) as roomSum from room_state group by s_floor

SELECT s_floor,count(s_room_no) as roomSum FROM room_state GROUP BY s_floor


DECLARE @Bdate DATETIME ,
    @Edate DATETIME;
SET @Bdate = '2018-04-27';
SET @Edate = '2018-05-02';

SELECT  ct.s_dep_name ,
        COUNT(ct.s_dep_name) AS desCount ,
        SUM(ct.n_capital) AS chargeTotal
FROM    cardaccount ct ,
        regcard rc
WHERE   ( ct.s_account_no = rc.s_account_no )
        AND ( ct.n_caprmb <> 0.00 )
        AND ct.s_sys_date >= @Bdate
        AND ct.s_sys_date <= @Edate
        AND ct.s_dep_name LIKE '%' + '%' + '%'
GROUP BY s_dep_name;
