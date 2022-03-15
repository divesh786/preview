UPDATE library_posts T
       JOIN (SELECT *,
                    Row_number()
                      OVER(
                        partition BY library_id
                        ORDER BY library_id, priority ASC) AS RN
             FROM   library_posts)T1
         ON T1.post_id = T.post_id
SET    T.priority = rn 