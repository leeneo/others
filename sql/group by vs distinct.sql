/*sql 带参数的存储过程*/
Usp_get_business_daily_report '2017-10-09'

select count(s_room_no) as roomSum from room_state  WHERE s_floor = 16

select distinct s_floor as FloorNo,count(s_room_no) as roomSum from room_state group by s_floor

SELECT s_floor,count(s_room_no) as roomSum FROM room_state GROUP BY s_floor
