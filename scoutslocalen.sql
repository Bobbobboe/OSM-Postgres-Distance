--Query for finding all scoutslokalen in 10 km of my house
select *
from planet_osm_polygon
where ST_Distance(
    ST_Transform((select way from planet_osm_polygon where osm_id = '116800984'), 3857),
    ST_Transform((way ), 3857)
  ) < 10000
and name = 'Scoutslokaal'
