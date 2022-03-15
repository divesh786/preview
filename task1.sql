	UPDATE library_posts T 
		JOIN (
			   SELECT post_id,row_number() over(PARTITION BY library_id ORDER BY library_id,priority ASC) as RN
			   FROM library_posts  
			  )T1
		ON T1.post_id=T.post_id
		SET T.priority=RN