select task_id, to_char(creation_time,'DD-MON-YY hh24:mi:ss') as create_time, state
from dba_inmemory_aimtasks
where creation_time > sysdate -1
order by task_id
/

