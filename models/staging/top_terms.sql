select week as week
       , dma_name as region
       , dma_id as region_id
       , term as search_term
       , rank 
       , score
from {{ source('US', 'top_terms')}}