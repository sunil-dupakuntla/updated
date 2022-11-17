SELECT * 
          FROM dbo.actor a 
          INNER JOIN dbo.movie_cast mc ON a.act_id=mc.act_id 
          INNER JOIN dbo.movie m ON mc.mov_id=m.mov_id 
          WHERE trim(mov_title)='Deliverance'; 