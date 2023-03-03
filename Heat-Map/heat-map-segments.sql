set pages 9999
set lines 150

set echo on

-- Heat Map query

col object_name format a15;
col partition_name format a15;
col track_time      heading 'TRACK|TIME'      format a20;
col segment_write   heading 'SEG|WRITE'       format a20;
col segment_read    heading 'SEG|READ'        format a20;
col full_scan       heading 'FULL|SCAN'       format a20;
col lookup_scan     heading 'LOOKUP|SCAN'     format a20;
col n_full_scan     heading 'NUM FULL|SCAN'   format 99999999;
col n_lookup_scan   heading 'NUM LOOKUP|SCAN' format 99999999;
col n_segment_write heading 'NUM SEG|WRITE'   format 99999999;

select
  object_name,
  subobject_name as partition_name,
  to_char(SYSDATE,'MM/DD/YYYY HH24:MI:SS') as track_time,
  to_char(segment_write_time,'MM/DD/YYYY HH24:MI:SS') as segment_write_time,
  to_char(segment_read_time,'MM/DD/YYYY HH24:MI:SS') as segment_read_time,
  to_char(full_scan,'MM/DD/YYYY HH24:MI:SS') as full_scan_time,
  to_char(lookup_scan,'MM/DD/YYYY HH24:MI:SS') as lookup_scan_time
from
  dba_heat_map_segment
where
  owner = 'SSB'
--  object_name in ('LINEORDER','PART','SUPPLIER','CUSTOMER','DATE_DIM')
order by
  object_name,
  partition_name,
  track_time
/

set echo off
