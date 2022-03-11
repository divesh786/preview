 SELECT post_id,
       library_id,
       message,
       Row_number()
         OVER(
           partition BY library_id) AS priority
FROM   library_posts;  