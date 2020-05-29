--  FILE:       im_attributes.sql
--
--  DESCRIPTION:
--              Script to display table attributes from user_tables
--              for DBIM examples
--

set pages 999
set lines 200

column table_name format a12
column cache format a5;
column buffer_pool format a11;
column compression heading 'DISK|COMPRESSION' format a11;
column compress_for format a12;
column INMEMORY_PRIORITY heading 'INMEMORY|PRIORITY' format a10;
column INMEMORY_DISTRIBUTE heading 'INMEMORY|DISTRIBUTE' format a12;
column INMEMORY_COMPRESSION heading 'INMEMORY|COMPRESSION' format a17;
column inmemory_service_name heading 'SERVICE|NAME' format a7;
set echo on

-- Show table attributes

select table_name, cache, buffer_pool, compression, compress_for, 
       inmemory, inmemory_priority, inmemory_distribute, 
       inmemory_compression, inmemory_service_name
from   user_tables;

set echo off
