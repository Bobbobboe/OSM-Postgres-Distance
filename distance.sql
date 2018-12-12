SELECT ST_Distance(
    		ST_Transform((select way from planet_osm_polygon where osm_id = '116800984'), 3857),
    		ST_Transform((select way from planet_osm_polygon where name like 'Campus Proximus' limit 1 ), 3857)
	) AS distance_in_meter
