SELECT a.act_id, a.act_fname + ' ' + a.act_lname 'Full Name'
          FROM dbo.actor a 
          JOIN (
          SELECT act_id, count(*) 'c'
          FROM dbo.movie_cast 
          GROUP BY act_id 
          ) t1 
          ON t1.act_id=a.act_id 
          AND t1.c > 1
