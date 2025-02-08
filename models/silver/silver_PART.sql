select  
p_partkey,
UPPER(p_name) as p_name,
UPPER(p_mfgr) as p_mfgr,
UPPER(p_brand) as p_brand,
UPPER(p_type) as p_type,
ROUND(p_size,0) as p_size,
UPPER(p_container) as p_container,
ROUND(p_retailprice,2) as p_retailprice,
UPPER(p_comment) as p_comment
from {{ ref ('raw_PART') }} 
where p_partkey is not null 

