select  
c_custkey as pk_custkey,
c_name as name, 
c_address as address,
c_nationkey as fk_nationkey,
c_phone as phone,
c_acctbal as acctbal,
c_mktsegment as mktsegment,
c_comment as comment
from {{ ref ('silver_CUSTOMER') }} 
