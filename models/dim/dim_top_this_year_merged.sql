select *
from {{ ref('fact_merged_terms') }}
where date_week >= DATE_TRUNC(current_date(), year)
