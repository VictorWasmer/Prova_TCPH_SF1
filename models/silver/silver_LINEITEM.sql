select 
l_orderkey,
l_partkey,
l_suppkey,
ROUND(l_linenumber,0) as l_linenumber,
ROUND(l_quantity,0) as l_quantity,
ROUND(l_extendedprice,2) as l_extendedprice,
ROUND(l_discount,2) as l_discount,
ROUND(l_tax,2) as l_tax,
UPPER(l_returnflag) as l_returnflag,
UPPER(l_linestatus) as l_linestatus,
DATE(l_shipdate) as l_shipdate,
DATE(l_commitdate) as l_commitdate,
DATE(l_receiptdate) as l_receiptdate,
UPPER(l_shipinstruct) as l_shipinstruct,
UPPER(l_shipmode) as l_shipmode,
UPPER(l_comment) as l_comment
from {{ ref ('raw_LINEITEM') }} 
where l_orderkey is not null and l_partkey is not null and l_suppkey is not null

