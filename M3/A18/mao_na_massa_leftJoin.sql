use sakila;

SELECT 
    customer.customer_id, 
    customer.first_name, 
    customer.last_name
FROM 
    customer
    LEFT JOIN rental ON customer.customer_id = rental.customer_id;
-- WHERE 
    -- rental.rental_id IS NULL;