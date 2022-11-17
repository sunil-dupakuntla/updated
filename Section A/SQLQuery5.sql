SELECT m.mov_title AS 'Movie_Title', m.mov_year AS 'Movie_Year',
          CONVERT(DATE,m.mov_dt_rel) AS 'Date_of_Release',
           d.dir_fname + ' ' + d.dir_Iname AS 'Director_Name',
           a.act_fname + ' ' + a.act_lname AS 'Actor_Name'
          FROM Movie m 
          INNER JOIN movie_director md  ON m.mov_id = md.mov_id 
          INNER JOIN director d ON d.dir_id = md.dir_id 
          INNER JOIN movie_cast mc ON mc.mov_id = md.mov_id 
          INNER JOIN Actor a ON a.act_id = mc.act_id 
          INNER JOIN rating r ON r.mov_id = m.mov_id 
          WHERE r.rev_id IN (
          SELECT rev_id from Reviewer 
          WHERE trim(rev_name) = 'Neal Wruck'
          );   
