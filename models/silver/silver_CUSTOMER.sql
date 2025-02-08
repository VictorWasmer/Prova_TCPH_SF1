select  
c_custkey,
UPPER(c_name) AS c_name,
UPPER(c_address) as c_address,
c_nationkey,
c_phone,
ROUND(c_acctbal, 2) as c_acctbal,
UPPER(c_mktsegment) as c_mktsegment,
UPPER(c_comment) as c_comment
from {{ ref ('raw_CUSTOMER') }} 
where c_custkey is not null
