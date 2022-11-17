SELECT mov_title AS 'Movie_Title'
          FROM [dbo].[Movie]
          inner JOIN dbo.movie_genres ON movie.mov_id=movie_genres.mov_id 
          inner JOIN dbo.genres ON movie_genres.gen_id=genres.gen_id 
          WHERE trim(genres.gen_title)='Horror';  
