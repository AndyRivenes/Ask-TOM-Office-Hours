create inmemory join group jgrp_custkey
(lineorder(lo_custkey), customer(c_custkey));
--
alter table lineorder no inmemory;
alter table customer no inmemory;
--
alter table lineorder inmemory priority high;
alter table customer inmemory priority high;

-- drop inmemory join group jgrp_custkey;

