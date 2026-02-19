
/* ============================================================
   VIEW 1: v1
   Purpose:
   - Standardize order_date into proper DATE format
   - Preserve original raw table
   - Prepare data for further cleaning
   ============================================================ */
   
create view v1 as (select   
    CASE    /* Convert different date formats into a proper DATE column */
	  when order_date like '%/%/%' 
	    then to_date(order_date, 'yyyy/mm/dd')
	  when order_date like '__-__-____' 
	    then to_date(order_date, 'dd-mm-yyyy')
	  when order_date like '____-__-__' 
	   then to_date(order_date, 'yyyy-mm-dd')
	  else NULL
	END AS order_date_new,
	  brand,
	  product_category,
	  customer_gender,
	  shoe_size,country,
	  sales_channel,
	  quantity,
	  unit_price,
	  revenue,
	  payment_method,
	  loyalty_member,
	  returned_flag 
	  
 from raw_footwear_sales);
 
 /* Preview data */
 select * from v1 LIMIT 100;
	  
/* ============================================================
   VIEW 2: cleaned_sport_sales_view
   Purpose:
   - Standardize categorical fields
   - Handle missing values
   - Normalize country names
   - Clean data types
   - Recalculate revenue
   - Create consistent flags
   ============================================================ */

create view cleaned_sport_sales_view as 
select order_date_new,
       brand,
       product_category,
      CASE    /* Standardize gender values */
          when customer_gender='Female' then 'F'
          when customer_gender='Male' then 'M'
          when customer_gender='Unisex' then 'Other'
          else coalesce(customer_gender,'Unkown') 
      END AS new_customer_gender,
	  
	   /* Replace missing shoe sizes */
	  coalesce(shoe_size,'N/A') as new_shoe_size,
	  
      CASE   /* Normalize country names */
          when lower(country) in ('us','usa','united states') then 'USA' 
          when country='GER' then 'Germany' 
          when country='India' then 'IND'
          else coalesce(country,'Unkown') 
      END as new_country,
	  
	   /* Handle missing sales channel */
	  coalesce(sales_channel,'unknown')as sales_channel,
	  
	  /* Convert quantity to integer */
	  quantity::float::INT,
	  unit_price,
	  
	  /* Recalculate revenue using cleaned quantity */
	  (coalesce(quantity::float::INT,NULL)*coalesce(unit_price,NULL)) as revenue,
	  
	  /* Standardize payment method */
	  coalesce(payment_method,'Unknown') as payment_method,
	  
      CASE   /* Convert loyalty flag to readable values */
          when loyalty_member='Y' then 'Yes'
          when  loyalty_member='N' then 'No'
          else coalesce(loyalty_member,'N/A') 
      END AS new_loyalty_member,
      CASE     /* Convert returned flag into binary 1/0 */

          when returned_flag::int::boolean= TRUE then  1
          when returned_flag::int::boolean= FALSE then 0
          else returned_flag
      END as returned_flag_bool
	  
 from v1;

 /* Preview cleaned data */  
select * from cleaned_sport_sales_view;

 


 
