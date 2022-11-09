select   week 
       , dma_name
       , dma_id
       , term as search_term
       , rank
       , score
from {{ source('dev', 'top_terms')}}