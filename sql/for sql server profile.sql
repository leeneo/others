sys.sp_who @loginame = 'sa' -- sysname

SELECT session_id as SPID, login_time, login_name, host_name, host_process_id as ClientProcessID , status 
FROM sys.dm_exec_sessions where session_id = @@SPID