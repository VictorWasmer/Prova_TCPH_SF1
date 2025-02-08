select  
n_nationkey,
UPPER(n_name) as n_name,
n_regionkey,
UPPER(n_comment) as n_comment
from {{ ref ('raw_NATION') }} 
where n_nationkey is not null

