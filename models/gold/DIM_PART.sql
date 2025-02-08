select  
p_partkey as pk_part,
p_name as name,
p_mfgr as mfgr,
p_brand as brand,
p_type as type,
p_size as size,
p_container as container,
p_retailprice as retailprice,
p_comment as comment
from {{ ref ('silver_PART') }} 


