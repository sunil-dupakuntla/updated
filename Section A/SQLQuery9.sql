SELECT a.act_fname 'First_Name' , a.act_lname 'Last_Name' , mc.role AS 'Role'
          FROM dbo.actor a 
          INNER JOIN dbo.movie_cast mc ON mc.act_id=a.act_id 
         INNER JOIN dbo.movie m ON m.mov_id=mc.mov_id 
          WHERE trim(mov_title)='Boogie Nights';  
