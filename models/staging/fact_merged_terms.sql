select * from {{ ref('fact_top_us') }}
union all
select * from {{ ref('fact_top_international') }}
