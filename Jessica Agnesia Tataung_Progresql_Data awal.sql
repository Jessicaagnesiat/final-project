CREATE TABLE order_item_agg AS 
SELECT 
	order_id,
	COUNT(order_item_id) AS total_order,
	COUNT(DISTINCT product_id) AS total_product
	SUM(price) AS total_revenue,
	SUM(freight_value) AS total_freight_cost
FROM order_items
GROUP BY order_id


CREATE TABLE geolocation_agg AS
SELECT 
	geolocation_zip_code_prefix,
	AVG(geolocation_lat) AS mean_geolocation_lat,
	AVG(geolocation_lng) AS mean_geolocation_lng
FROM geolocation
GROUP BY geolocation_zip_code_prefix

DROP TABLE primary_type;

CREATE TEMP TABLE primary_payment AS 
SELECT 
	order_id,
	payment_type AS primary_payment_type
FROM (
	SELECT
		order_id,
		payment_type,
		payment_value,
		ROW_NUMBER() OVER (
			PARTITION BY order_id
			ORDER BY payment_value DESC
		) AS rn
	FROM order_payments
) t
WHERE rn = 1;

CREATE TABLE order_payments_agg AS
SELECT 
	op.order_id,
	SUM (op.payment_value) AS total_payment_value,
	MAX (op.payment_installments) AS payment_installments,
	CASE
		WHEN MAX(op.payment_installments) > 1 THEN 'Installment'
		ELSE 'Full payment'
	END AS payment_method,
	pp.primary_payment_type
FROM order_payments AS op
LEFT JOIN primary_payment AS pp ON op.order_id = pp.order_id
GROUP BY op.order_id, pp.primary_payment_type;

CREATE TABLE order_reviews_agg  AS 
SELECT 
	order_id,
	review_score,
	review_comment_message
FROM (
	SELECT
		order_id,
		review_score,
		review_comment_message,
		ROW_NUMBER () OVER (
			PARTITION BY order_id
			ORDER BY review_creation_date DESC 
		) AS row_num
	FROM order_reviews
	WHERE review_comment_message IS NOT NULL
) r
WHERE row_num = 1;


CREATE TABLE main_table_orders AS 
SELECT 
	o.order_id,
	o.customer_id,
	o.order_status,
	o.order_purchase_timestamp,
	o.order_approved_at,
	o.order_delivered_carrier_date,
	o.order_delivered_customer_date,
	o.order_estimated_delivery_date,
	--customer
	c.customer_unique_id,
	c.customer_zip_code_prefix,
	c.customer_city,
	c.customer_state,
	--order_items
	oi.total_order,
	oi.total_product,
	oi.total_revenue,
	oi.total_freight_cost,
	--geolocation
	g.mean_geolocation_lat,
	g.mean_geolocation_lng,
	--payment
	op.total_payment_value,
	op.payment_installments,
	op.payment_method,
	op.primary_payment_type,
	--review
	ora.review_score,
	ora.review_comment_message
FROM orders AS o
LEFT JOIN customers AS c ON o.customer_id = c.customer_id
LEFT JOIN order_item_agg AS oi ON o.order_id = oi.order_id
LEFT JOIN geolocation_agg AS g	ON c.customer_zip_code_prefix = g.geolocation_zip_code_prefix::VARCHAR
LEFT JOIN order_payments_agg AS op ON o.order_id = op.order_id
LEFT JOIN order_reviews_agg AS ora ON o.order_id = ora.order_id


	
