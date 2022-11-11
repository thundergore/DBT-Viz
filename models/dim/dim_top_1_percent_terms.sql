select  distinct date_week 
      , country_code
      , search_term
      , rank
      , ntile(100) over (partition by country_name order by rank asc) AS ntile_rank
from {{ ref('dim_top_this_year_merged') }}
where rank = 1
qualify ntile_rank = 1
order by date_week desc, country_code asc