SELECT NAME 
FROM   pres_hobby 
       INNER JOIN president 
               ON pres_id = id 
WHERE  pres_id NOT IN (SELECT pres_id 
                       FROM   pres_hobby 
                       WHERE  hobby NOT IN (SELECT hobby 
                                            FROM   pres_hobby ph 
                                                   INNER JOIN president p 
                                                           ON ph.pres_id = p.id 
                                            WHERE  p.NAME = 'JEFFERSON T')) 
GROUP  BY NAME 
HAVING Count (*) = (SELECT Count (*) 
                    FROM   pres_hobby ph 
                           INNER JOIN president p 
                                   ON ph . pres_id = p . id 
                    WHERE  p.NAME = 'JEFFERSON T') 