with registred_not_by_mobile
        as (select hotel_continent, hotel_country, hotel_market, count(*) as counter
                from test
                where test.is_mobile = 0
                group by hotel_continent, hotel_country, hotel_market
				order by counter desc)
select position, hotel_continent || hotel_country || hotel_market as hotel, counter
from (select rank() over(order by counter desc) as position, hotel_continent, hotel_country, hotel_market, counter
        from registred_not_by_mobile) top
where position < 4;