1
SELECT date, title, author  FROM forum_posts WHERE date BETWEEN '2048-0
4-01' AND '2048-05-01';
2048-04-08 00:00:00     | Get rich fast   | smart-money-44
--only one with real words

2
SELECT last_name FROM forum_accounts WHERE username = 'smart-money-44';
last_name 
-----------
 Steele
(1 row)
--gonna assume kid and dad have same last name 

3
SELECT username FROM forum_accounts WHERE last_name LIKE 'Steele';
    username     
-----------------
 sharp-engine-57
 stinky-tofu-98
 smart-money-44
(3 rows)

mainframe_override=# SELECT username, first_name FROM forum_accounts WHERE last_name LIKE 'Steele';
    username     | first_name 
-----------------+------------
 sharp-engine-57 | Andrew
 stinky-tofu-98  | Kevin
 smart-money-44  | Brad
(3 rows)

--realized I need first name too

4
SELECT *  FROM emptystack_accounts WHERE last_name LIKE 'Steele';
    username    |  password   | first_name | last_name 
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele
(2 rows)

--dad has a forum and account so it has to be andrew steele

5
mainframe_override=# SELECT * FROM emptystack_accounts WHERE last_name LIKE 'Steele';
    username    |  password   | first_name | last_name 
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele

 --logged in, opened new folders

 6
 --need to get the message w self driving taxis
 mainframe_override=# SELECT subject FROM emptystack_messages WHERE subject ILIKE 'taxi';
 subject 
---------
(0 rows)

mainframe_override=# SELECT subject FROM emptystack_messages WHERE subject ILIKE '%taxi%';
   subject    
--------------
 Project TAXI
(1 row)


mainframe_override=# SELECT subject FROM emptystack_messages WHERE subject ILIKE '%taxi%';
   subject    
--------------
 Project TAXI
(1 row)

mainframe_override=# SELECT * FROM emptystack_messages WHERE subject ILIKE '%taxi%';
  id   |     from     |       to       |   subject    |                            body                            
-------+--------------+----------------+--------------+------------------------------------------------------------
 LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.
(1 row)

7
--get account info

mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
   username   |    password    | first_name | last_name 
--------------+----------------+------------+-----------
 your-boss-99 | notagaincarter | Skylar     | Singer
(1 row)

8

mainframe_override=# SELECT id FROM emptystack_projects WHERE code ILIKE '%taxi%';
    id    
----------
 DczE0v2b
(1 row)
