select  
o_orderkey,
o_custkey,
UPPER(o_orderstatus) as o_orderstatus,
ROUND(o_totalprice,2) as o_totalprice,
DATE(o_orderdate) as o_orderdate,
UPPER(o_orderpriority) as o_orderpriority,
UPPER(o_clerk) as o_clerk,
ROUND(o_shippriority,0) as o_shippriority,
UPPER(o_comment) as o_comment
from {{ ref ('raw_ORDERS') }} 
where o_orderkey is not null and o_custkey is not null

