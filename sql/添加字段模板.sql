IF COL_LENGTH('room_type', 'n_wx_res') IS NULL
begin
--ALTER TABLE [dbo].[room_type] ADD n_wx_res [INT] NULL
PRINT 'û��'
end
ELSE
PRINT '����'

