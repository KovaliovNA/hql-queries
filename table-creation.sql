CREATE EXTERNAL TABLE IF NOT EXISTS test (id int, date_time DATE, site_name int, posa_continent int, user_location_country int, user_location_region int, user_location_city int, orig_destination_distance DECIMAL, user_id int, is_mobile int, is_package int, channel int, srch_ci DATE, srch_co DATE, srch_adults_cnt int, srch_children_cnt int, srch_rm_cnt int, srch_destination_id int, srch_destination_type_id int, hotel_continent int, hotel_country int, hotel_market int)
COMMENT 'Test table with hotel data'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/hadoop/test/';