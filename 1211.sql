select query_name, round((sum(rating*1.0/position)/count(query_name)),2) as quality,
round(100.0*avg(case when rating<3 then 1 else 0 end),2) as poor_query_percentage
from Queries
group by query_name;