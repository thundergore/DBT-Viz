select   week as date_week
       , 'United States' as country_name
       , 'US' as country_code
       , dma_name as region_name
       , concat('US-', cast(dma_id as STRING)) as region_id
       , term as search_term
       , rank
       , percent_gain
       , score
from {{ source('dev', 'top_rising_terms')}}