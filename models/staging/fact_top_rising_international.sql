select   week
       , country_name
       , country_code
       , region_name
       , region_code as region_id
       , term as search_term
       , rank
       , percent_gain
       , score 
 from {{source('dev', 'international_top_rising_terms')}}
