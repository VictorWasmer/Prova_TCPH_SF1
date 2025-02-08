select  
s_suppkey as pk_supplier,
s_name as name,
s_address as address,
s_nationkey as fk_nation,
s_phone as phone,
s_acctbal as accountbalance,
s_comment as comment
from {{ ref ('silver_SUPPLIER') }} 
