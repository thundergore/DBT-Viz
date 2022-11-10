select  date_week 
      , search_term
      , ntile(100) over (partition by country_name order by rank asc) AS ntile_rank
from {{ ref('dim_top_this_year_merged') }}
qualify ntile_rank = 1
order by date_week desc