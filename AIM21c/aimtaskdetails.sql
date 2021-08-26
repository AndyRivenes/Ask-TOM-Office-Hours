col object_owner format a15;
col object_name format a30;
col subobject_name format a30;
select * from dba_inmemory_aimtaskdetails where task_id = &1;

