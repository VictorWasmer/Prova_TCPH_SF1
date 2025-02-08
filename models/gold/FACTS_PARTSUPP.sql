select  
ps_partkey as fk_partkey,
ps_suppkey as fk_suppkey,
ps_availqty as availqty,
ps_supplycost as supplycost,
ps_comment as comment
from {{ ref ('silver_PARTSUPP') }} 
