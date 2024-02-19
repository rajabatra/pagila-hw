/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT customer_id, first_name, last_name, SUM(amount)
FROM payment JOIN customer USING (customer_id)
GROUP BY first_name, last_name, customer_id
ORDER BY last_name;
