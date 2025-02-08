select  
n_nationkey as pk_nation,
n_name as nationname,
n_regionkey as pk_region,
r_name as regionname,
n_comment as nationcomment,
r_comment as regioncomment
from {{ ref ('silver_NATION') }} nation left join {{ ref ('silver_REGION') }} region
on nation.n_regionkey = region.r_regionkey


