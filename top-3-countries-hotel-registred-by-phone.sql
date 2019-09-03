with registred_by_mobile_count
        as (select hotel_country, count(is_mobile) as total_count
                from test
                where is_mobile = 1
                group by hotel_country
                order by total_count desc)
select position, hotel_country, total_count
from (select rank() over(order by total_count desc) as position, hotel_country, total_count
        from registred_by_mobile_count) top
where position < 4;