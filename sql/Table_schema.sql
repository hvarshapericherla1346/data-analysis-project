--Raw footwear sales table create
CREATE TABLE raw_footwear_sales (
    order_date TEXT,
    brand TEXT,
    product_category TEXT,
    customer_gender TEXT,
    shoe_size TEXT,
    country TEXT,
    sales_channel TEXT,
    quantity INT,
    unit_price NUMERIC(10,2),
    revenue NUMERIC(10,2),
    payment_method TEXT,
    loyalty_member TEXT,
    returned_flag INT
);
