set timing on

select /*+ NO_VECTOR_TRANSFORM MONITOR*/ count(*)
from lineorder l, customer c
where l.LO_CUSTKEY = c.C_CUSTKEY
and C_REGION = 'AMERICA'
/

select * from table(dbms_xplan.display_cursor());

