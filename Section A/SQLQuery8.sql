SELECT m.mov_title 'Movie Name'
          FROM dbo.movie m 
          JOIN dbo.movie_director md 
          ON m.mov_id=md.mov_id 
          JOIN dbo.director d 
          ON d.dir_id=md.dir_id 
          WHERE trim(dir_fname)='David';
