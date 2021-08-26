alter session set "_inmemory_dynamic_scans"=disable;
alter session set inmemory_deep_vectorization = false;

select /*+ NO_VECTOR_TRANSFORM MONITOR */ count(*)
from lineorder l, customer c
where l.LO_CUSTKEY = c.C_CUSTKEY
/

set trimspool on
set trim on
set pages 0
set linesize 1000
set long 1000000
set longchunksize 1000000
spool sqlmon-novect.html
select dbms_sql_monitor.report_sql_monitor(type=>'active') from dual;
spool off
