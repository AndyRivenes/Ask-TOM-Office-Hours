--  FILE:       imcu_seg.sql
--
--  DESCRIPTION:
--              Script to display in-memory attributes and IMCU info for
--              objects populated in the IM column store
--

col owner        format a10;
col segment_name format a20;

select
  s.inst_id,
  s.owner,
  s.segment_name,
  -- s.partition_name,
  h.objd,
  s.bytes,
  s.inmemory_size,
  count(h.imcu_addr),
  sum(h.used_len),
  sum(h.num_rows)
from
  gv$im_header h,
  gv$im_segments s,
  dba_objects o
where
  o.object_id = h.objd
  and h.inst_id = s.inst_id
  and o.owner = s.owner
  and o.object_name = s.segment_name
group by
  s.inst_id,
  s.owner,
  s.segment_name,
  -- s.partition_name,
  h.objd,
  s.bytes,
  s.inmemory_size
order by
  s.owner,
  s.segment_name,
  s.inst_id
/

