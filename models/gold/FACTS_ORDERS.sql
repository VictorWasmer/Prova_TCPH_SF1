select  
o_orderkey as pk_orderkey,
o_custkey as fk_custkey,
l_partkey as fk_partkey,
l_suppkey as fk_suppkey,

o_orderstatus as orderstatus,
o_totalprice as totalprice,
o_orderdate as orderdate,
o_orderpriority as orderpriority,
o_clerk as clerk,
o_shippriority as shippriority,
o_comment as ordercomment,

l_linenumber as linenumber,
l_quantity as quantity,
l_extendedprice as extendenprice,
l_discount as discount,
l_tax as tax,
l_returnflag as returnflag,
l_linestatus as linestatus,
l_shipdate as shipdate,
l_commitdate as commitdate,
l_receiptdate as receiptdate,
l_shipinstruct as shipinstruct,
l_shipmode as shipmode,
l_comment as lineitemcomment
from {{ ref ('silver_ORDERS') }} orders left join {{ ref ('silver_LINEITEM') }} lineitem
on orders.o_orderkey = lineitem.l_orderkey
