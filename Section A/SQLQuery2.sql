SELECT 
           rv.rev_name as Reviewers_Name
          FROM dbo.reviewer rv 
          JOIN dbo.rating ra 
           ON ra.rev_id=rv.rev_id 
          WHERE ra.rev_stars>=8 
          AND rv.rev_name!='';