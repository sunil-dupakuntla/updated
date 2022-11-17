use Movies;
CREATE PROCEDURE cast_actor (@act_ID INTEGER, @mov_ID INTEGER, @roles 
          VARCHAR(50))
          AS
          BEGIN
           INSERT INTO dbo.movie_cast(act_id, mov_ID, role)
           VALUES (@act_id, @mov_ID, @roles);
          END; 

 CREATE TRIGGER cast_actor_trigger 
          ON dbo.movie_cast 
          FOR INSERT 
          AS
          BEGIN 
          declare @mov_id INTEGER;
          declare @act_id INTEGER;
          declare @count INTEGER;
          DECLARE @err_message NVARCHAR(max)
          SET @mov_id = (select mov_id FROM inserted)
          SET @act_id = (select act_id FROM inserted)
          SET @count = (select COUNT(*) FROM movie_cast 
          WHERE mov_id = @mov_id AND act_id = @act_id)
          SELECT act_id, mov_id 
          FROM movie_cast 
          WHERE mov_id = @mov_id 
          IF(@count > 1)
          BEGIN
           SET @err_message = 'Cannot cast actor more than once for the 
          movie'
           RAISERROR(@err_message, 16, 1)
           ROLLBACK
          END
          END;    

 EXECUTE cast_actor 124,921,'George faraday'; 


 EXECUTE cast_actor 124,928,'Back to the Future';

 EXECUTE cast_actor 124,921,'George faraday';