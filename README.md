# Ask-TOM-Office-Hours

These are scripts the have been used in the Database In-Memory Ask TOM Office Hours sessions

Ask TOM Office Hours - RAC: How Population and Queries Work - 5/27/20:
```
im_attributes.sql - Shows inmemory and other table attributes from user_tables
imcu_seg.sql - Shows details of objects populated in the IM column store
imq-parallel.sql - Runs a parallel query with SQL Monitor text output using the SSB schema
imq-serial.sql - Runs a serial query with SQL Monitor text output using the SSB schema
rac_imseg.sql - Shows RAC-aware IM column store population
```

Ask TOM Office Hours - AIM 21c - 04/28/2021:
```
aimhm.sql - Display AIM tracked usage statistics (similar to Heat Map)
aimtasks.sql - Display AIM tasks
aimtaskdetails.sql - Display details of sub-tasks run for a task_id (see aimtasks.sql)
aimseg.sql - Script to select count(*) from a table to "heat up" AIM access statistics
```

Ask TOM Office Hours - In-Memory Vectorized Joins - 08/26/2021:
```
01-join_cust-vect.sql - Display hash join with IM vectorized joins enabled
02-join_cust-novects.sql - Display hash join with IM vectorized joins disabled
03-join_cust-sysstats.sql - Display hash joins 01 and 02 using v$sysstats to show IM simd statistics
04-join_group.sql - Create and populate a join group to show use with IM vectorized joins
05-sqlmon_vect.sql - SQL Monitor active report for query 01
06-sqlmon_novect.sql - SQL Monitor active report for query 02
07-join_cust_jg-sysstats.sql - Display hash joins 01 and 02 using v$sysstats with join group
08-sqlmon_vect_jg.sql - SQL Monitor active report for query 01 with join group
09-sqlmon_novect_jg.sql - SQL Monitor active report for query 01 with join group
10-cust_filter.sql - Display hash join with Bloom filter and IM vectorized joins
11-cust_filter-sysstats.sql - Display hash join with Bloom filter and IM vectorized joins enabled 
  and disabled with v$sysstats
```

Ask TOM Office Hours - In-Memory Expressions Update - 11/18/2021:
```
Office-Hours-IME-Updates.pdf - In-Memory Expressions Update presentation
demo-output.txt - Output from demo queries run during the session
```

Run Stats Utilities (source: Tom Kyte)
```
runstats.sql - The original runstats utility with modifications made with Tom's approval
run_sysstats.sql - Modified version of runstats that uses v$sysstat to get around a 21c issue 
  with v@mystat. Used in the IM Vectorized Joins Office Hours session.
```

Ask TOM Office Hours - External Tables - 01/26/2022:
```
OH-Ext-Tables-012622.pdf - presentation from the session
asktom-ext-part-examples.txt - example SQL and results

imseg.sql - display v$im_segments population info
imext-stats.sql - display session level statistics
imexternal.sql - runs external table query
imextpart.sql - runs partition external table query
imexthybrid.sql -runs hybrid external table query
```

Ask TOM Office Hours - In-Memory Hybrid Scans - 03/09/2022:
```
OH-DBIM-Hybrid-Scans-0309622.pdf - presentation from the session
OH-DBIM-Hybrid-Scans-demo-030922.txt - example SQL and results
```

Ask TOM Office Hours - Heat Map - 06/22/22
``
OH-HeatMap-062222.pdf - presentation from the session
heat-map-segments.sql - display heat map segment access
heat-map-counts.sql - display heat map access counts
```

Ask TOM Office Hours - SQL Monitor Update - 03/02/2023:
```
SQL-Monitor-Updates.pdf - presentation from the session
01-sqlmon-text.txt - SQL Monitor TEXT report
02-sqlmon-html.html - SQL Monitor HTML report
03-sqlmon-active.html - SQL Monitor ACTIVE report
04-sqlmon-3join-rac.html - A RAC example report
05-sqlmon-join-groups.html - An example of DBIM Join Groups
06-sqlmon-2table-hash-deepvect.html - An example of DBIM deep vectorization
07-sqlmon-Exa-smartscan.html - An example with Exadata SmartScans showing cell offload efficiency
```
