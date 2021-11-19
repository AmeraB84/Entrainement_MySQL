/*SELECT cl.commande_id,
       SUM(prix_total),
       cm.date_achat,
       c.nom,
       c.prenom
FROM commaNde_ligne cl 
LEFT JOIN commande cm
ON   cl.commande_id  =  cm.id 
LEFT JOIN client c 
ON cm.client_id = c.id 
GROUP BY 
       cl.commande_id;*/
       
/*UPDATE commande AS t1 
INNER JOIN 
    ( SELECT commande_id, SUM(commande_ligne.prix_total) AS p_total 
      FROM commande_ligne 
      GROUP BY commande_id ) t2 
          ON  t1.id = t2.commande_id 
SET t1.cache_prix_total = t2.p_total  */ 

/*SELECT 

       date_achat,
       SUM(cache_prix_total)
FROM 
    commande
GROUP BY 
    date_achat;*/
    
/*ALTER TABLE commande 
ADD category  TINYINT UNSIGNED NOT NULL AFTER `cache_prix_total`*/

/*UPDATE commande 

SET category = (
CASE  
     WHEN cache_prix_total  <200 THEN '1'
     WHEN cache_prix_total <500 THEN  '2' 
     WHEN cache_prix_total <1000 THEN '3'
	 ELSE '4'
    END );*/
 
/*CREATE TABLE commande_category (
id_catagory INT PRIMARY KEY NOT NULL ,
nom varchar(255) NOT NULL,
descriptif VARCHAR(30)
) ENGINE=MyISAM DEFAULT CHARSET='utf8';*/
/*ALTER TABLE commande_category 

DROP COLUMN nom;*/
/*INSERT INTO commande_category (
id_catagory,descriptif)
VALUES (
1,' les commandes de moins de 200€'
);
INSERT INTO commande_category (
id_catagory,descriptif)
VALUES (
2,' les commandes entre 200€ et 500€'
);
INSERT INTO commande_category (
id_catagory,descriptif)
VALUES (
3,'es commandes est entre 500€ et 1000€'
);
INSERT INTO commande_category (
id_catagory,descriptif)
VALUES (
4,' les commandes est sueperieur à 1000€'
);*/

/*SELECT *
FROM commande_category;*/

/*DELETE c.*,cl.*
FROM commande c
LEFT JOIN commande_ligne cl
ON c.id = cl.commande_id 
WHERE c.date_achat < '2019-01-31';*/
DROP DATABASE my_db;