col owner format a15;
col object_name format a30;
col subobject_name format a20;
select o.owner, o.object_name, TRUNC(a.track_time) as track_time, a.full_scan, SUM(a.n_fts) as n_fts
from dba_objects o, sys."_SYS_AIM_SEG_HISTOGRAM" a
where o.object_id = a.obj#
group by o.owner, o.object_name, TRUNC(a.track_time), a.full_scan
order by TRUNC(a.track_time), SUM(a.n_fts);

