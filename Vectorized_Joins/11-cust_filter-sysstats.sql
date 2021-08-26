@imlogin.sql

set pages 9999
set lines 150
set timing on
set echo on
set serveroutput on

exec runstats_pkg.rs_start;

@imlogin.sql
set serveroutput on
alter session set "_inmemory_dynamic_scans"=disable;
alter session set inmemory_deep_vectorization = false;

select /*+ NO_VECTOR_TRANSFORM MONITOR*/ count(*)
from lineorder l, customer c
where l.LO_CUSTKEY = c.C_CUSTKEY
and C_REGION = 'AMERICA'
/

exec runstats_pkg.rs_middle;

@imlogin.sql
set serveroutput on
alter session set "_inmemory_dynamic_scans"=disable;
alter session set inmemory_deep_vectorization = true;

select /*+ NO_VECTOR_TRANSFORM MONITOR*/ count(*)
from lineorder l, customer c
where l.LO_CUSTKEY = c.C_CUSTKEY
and C_REGION = 'AMERICA'
/

exec runstats_pkg.rs_stop;

