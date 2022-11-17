SELECT m.mov_year
          FROM dbo.movie m 
          JOIN dbo.rating ra 
          ON m.mov_id=ra.mov_id 
          WHERE ra.rev_stars>4;
