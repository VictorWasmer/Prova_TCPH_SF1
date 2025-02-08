select  
s_suppkey,
UPPER(s_name) as s_name,
UPPER(s_address) as s_address,
s_nationkey,
s_phone,
ROUND(s_acctbal,2) as s_acctbal,
UPPER(s_comment) as s_comment
from {{ ref ('raw_SUPPLIER') }} 
where s_suppkey is not null
