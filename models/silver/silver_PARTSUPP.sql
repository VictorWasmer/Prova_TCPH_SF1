select  
ps_partkey,
ps_suppkey,
ROUND(ps_availqty,0) as ps_availqty,
ROUND(ps_supplycost,2) as ps_supplycost,
UPPER(ps_comment) as ps_comment
from {{ ref ('raw_PARTSUPP') }} 
where ps_partkey is not null and ps_suppkey is not null
