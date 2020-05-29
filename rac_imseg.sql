--  FILE:       rac_imseq.sql
--
--  DESCRIPTION:
--              Script to display object populated in the IM column store
--              on a RAC database
--

col segment_name format a20;
col partition_name format a15;
select
  inst_id,
  segment_name,
  partition_name,
  bytes,
  bytes_not_populated,
  (bytes - bytes_not_populated) as "BYTES_POPULATED",
  (bytes_not_populated + (bytes - bytes_not_populated)) as "TOTAL_BYTES"
from gv$im_segments
order by
  segment_name,
  partition_name,
  inst_id;

