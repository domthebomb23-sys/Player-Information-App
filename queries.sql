select player_name,
       position,
       CAST(jersey_number AS INTEGER) as jersey_number,
       CAST(week AS INTEGER) as week,
       headshot_url,
       case
           when position = 'QB' then 'Offense'
           when position = 'RB' then 'Offense'
           when position = 'WR' then 'Offense'
           when position = 'TE' then 'Offense'
           when position = 'K' then 'Special Teams'
           when position = 'P' then 'Special Teams'
           when position = 'LS' then 'Special Teams'
           when position = 'DB' then 'Defense'
           when position = 'DL' then 'Defense'
           when position = 'LB' then 'Defense'
           when position = 'OL' then 'Offense'
       end as team_side
from BUFROSTER;


select distinct position
from BUFROSTER;