with dedup_query as (select 
*  ,
row_number() over (partition by id,year order by TIMESTAMP desc) as deduplication_id  
from {{ source('TEST', 'TEST') }}
)

select *
from dedup_query
where deduplication_id = 1 