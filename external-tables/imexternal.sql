set pages 9999
set lines 200
set tab off
set timing on
set echo on

select nation, count(*) from EXT_CUST_HYBRID_PART group by nation;

set echo off
set timing off

@xplan

@imext-stats.sql

