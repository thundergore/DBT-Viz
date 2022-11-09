select * from {{ ref('fact_top_rising_us') }}
union all
select * from {{ ref('fact_top_rising_international') }}
