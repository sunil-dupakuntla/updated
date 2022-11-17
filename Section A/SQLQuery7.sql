SELECT m.mov_title 'Title'      
          FROM dbo.movie m 
          JOIN dbo.rating ra 
          ON m.mov_id=ra.mov_id 
          WHERE ra.rev_stars IS NULL;
