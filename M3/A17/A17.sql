  select customer.first_name AS Nome, 
		 customer.last_name AS Sobrenome,
         rental.rental_date As  DataDoAluguel,
         rental.return_date AS DataDeDevolução
         
  from 
  customer 
  
  inner join
   rental on customer.customer_id = rental.customer_id;
         
         