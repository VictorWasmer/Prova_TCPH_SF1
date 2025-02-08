select  
r_regionkey,
UPPER(r_name) as r_name,
UPPER(r_comment) as r_comment
from {{ ref ('raw_REGION') }} 
where r_regionkey is not null
