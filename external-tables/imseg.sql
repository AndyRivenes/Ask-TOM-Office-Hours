col segment_name format a20;
col partition_name format a15;
col external format a8;
col bytes format 999,999,999,999;
col inmemory_size format 999,999,999,999;
col bytes_not_populated heading 'BYTES NOT|POPULATED' format 999,999,999;
select
  segment_name,
  partition_name,
  is_external as "EXTERNAL",
  bytes,
  populate_status as "POP STATUS",
  inmemory_size,
  bytes_not_populated
from
  v$im_segments
where
  segment_name NOT LIKE 'AUD$%'
--  segment_name in ('LINEORDER','CUSTOMER','DATE_DIM','PART','SUPPLIER')
order by
  segment_name;
