select  distinct date_week 
      , country_code
      , search_term
      , rank
      , ntile(20) over (partition by country_name order by rank asc) AS ntile_rank
from {{ ref('dim_top_this_year_merged') }}
where rank >= 5 --unsure if this is the logic tweak needed, let's test
qualify ntile_rank <= 5
order by date_week desc, country_code asc, ntile_rank asc