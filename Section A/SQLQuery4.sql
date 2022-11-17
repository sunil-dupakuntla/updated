SELECT dir_fname,dir_Iname
          FROM dbo.director 
          WHERE dir_id IN (
          SELECT dir_id 
          FROM dbo.movie_director 
          WHERE mov_id IN(
           SELECT mov_id 
           FROM movie_cast WHERE role IN (
           SELECT role 
           FROM dbo.movie_cast 
           WHERE mov_id = (
           SELECT mov_id 
          FROM dbo.movie 
          WHERE trim(role)='Eyes Wide Shut'
           )
           )
          )
          );