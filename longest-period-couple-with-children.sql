select test.user_id, datediff(test.srch_co, test.srch_ci) as stay_period
from test
where test.srch_adults_cnt = 2 and test.srch_children_cnt = 1
order by stay_period desc
limit 1;