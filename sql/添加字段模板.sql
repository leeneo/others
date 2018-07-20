IF COL_LENGTH('room_type', 'n_wx_res') IS NULL
begin
--ALTER TABLE [dbo].[room_type] ADD n_wx_res [INT] NULL
PRINT '没有'
end
ELSE
PRINT '已有'

