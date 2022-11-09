select   week
       , country_name
       , country_code
       , region_name
       , region_code
       , term as search_term
       , rank
       , score 
 from {{source('dev', 'international_top_terms')}}