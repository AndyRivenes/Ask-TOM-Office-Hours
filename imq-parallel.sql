--  FILE:       imq_parallel.sql
--
--  DESCRIPTION:
--              Script to show an in-memory query run with parallel query
--              Useful for showing IM queries on RAC
--

--  NOTE: Adjust DOP to at least as great as the number of IM column stores

alter session set parallel_degree_policy=auto;
alter session set parallel_degree_limit = 3;

set pages 9999
set lines 150

set timing on
set echo on

-- Demonstrate an in-memory query using PQ

Select /*+ MONITOR */
       sum(lo_extendedprice * lo_discount) revenue
From   LINEORDER l, DATE_DIM d
Where  l.lo_orderdate = d.d_datekey
And    l.lo_discount between 2 and 3
And    l.lo_quantity < 24
And    d.d_date='December 24, 1996';

set echo off
set timing off

set trimspool on
set trim on
set pagesize 0
set linesize 32767
set long 1000000
set longchunksize 1000000
select dbms_sql_monitor.report_sql_monitor(report_level=>'ALL',type=>'TEXT')from dual;

