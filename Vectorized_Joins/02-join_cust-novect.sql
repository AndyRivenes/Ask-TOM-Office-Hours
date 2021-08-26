@imlogin.sql

set pages 9999
set lines 150
set timing on
set echo on

alter session set "_inmemory_dynamic_scans"=disable;
alter session set inmemory_deep_vectorization = false;

select /*+ NO_VECTOR_TRANSFORM */ count(*)
from lineorder l, customer c
where l.LO_CUSTKEY = c.C_CUSTKEY
/

set echo off
set timing off

pause Hit enter ...

select * from table(dbms_xplan.display_cursor());

pause Hit enter ...

@imstats.sql

