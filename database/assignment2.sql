--1. Data for the table `account`
INSERT INTO public.account (account_firstname,
	account_lastname,
	account_email,
	account_password)
VALUES ('Tony',
	'Stark',
	'tony@starkent.com',
	'Iam1ronM@n');


--2. Modification of the table `account`
UPDATE public.account
SET account_type = 'Admin'
WHERE account_lastname = 'Stark';


--3. Modification of the table `account`
DELETE 
FROM 
	public.account
WHERE 
	account_id = '1';

--4. Modification of the table
UPDATE inventory 
SET inv_description = replace(inv_description, 'small interiors', 'a huge interior') 
WHERE inv_id = 10;


-- UPDATE inventory
-- SET
-- 	INV_DESCRIPTION = REPLACE(
-- 		INV_DESCRIPTION,
-- 		'small interiors',
-- 		'a huge interior'
-- 	)
-- WHERE
-- 	INV_ID = 10;

--5.  Inner join
SELECT 
  inv_id,
  inv_make, 
  inv_model, 
  c.classification_name
FROM 
  public.inventory i
INNER JOIN 
  public.classification c ON i.classification_id = c.classification_id
WHERE 
  c.classification_name = 'Sport';

--6. Update inventory
UPDATE 
  public.inventory
SET 
  inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
  inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');


