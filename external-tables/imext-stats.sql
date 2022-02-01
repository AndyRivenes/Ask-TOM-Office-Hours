set numwidth 20
col name format a50;
select
  t1.name,
  t2.value
FROM
  v$sysstat t1,
  v$mystat t2
WHERE
  ( t1.name IN (
      'CPU used by this session',
      'IM scan (dynamic) multi-threaded scans',
      'IM scan (dynamic) rows',
      'IM scan EU rows',
      'IM scan EUs columns accessed',
      'IM scan rows',
      'IM scan rows projected',
      'IM scan segments minmax eligible',
      'IM scan segments disk',
      'IM scan CUs pruned',
      'IM scan CUs columns accessed',
      'physical reads',
      'session logical reads',
      'session logical reads - IM',
      'session pga memory',
      'table scans (IM)',
      'table scan disk IMC fallback'
    )
    OR ( t1.name like 'IM scan CUs memcompress%' )
    OR ( t1.name like 'IM scan EUs memcompress%' )
  )
  AND t1.statistic# = t2.statistic#
  AND t2.value != 0
ORDER BY
  t1.name;

