
with temp_table as (
SELECT
	-- Show the community name
	account_number,
	-- Get the minimum value for the community 
	MIN(transaction_amount) Minimum,
	-- Get the 1st quartile boundary for the community, which is the highest value in the 1st quartile
	MAX(CASE WHEN Quartile = 1 THEN transaction_amount END) 1Quartile,
	-- Get the median for the community, which is the highest value in the 2nd quartile
	MAX(CASE WHEN Quartile = 2 THEN transaction_amount END) Median,
	-- Get the 3rd quartile boundary for the community, which is the highest value in the 3rd quartile
	MAX(CASE WHEN Quartile = 3 THEN transaction_amount END) 3Quartile,
	-- Get the maximum value for the community
	MAX(transaction_amount) Maximum,
	-- Get a count of the total properties in the community 
	COUNT(1) AS Count
FROM (
	SELECT
	account_number,
	transaction_amount,
	NTILE(4) over (
	 PARTITION by account_number 
	 ORDER BY transaction_amount
	) AS Quartile
	from `transaction`
) Vals
GROUP BY
	account_number
ORDER BY
	account_number
	),
	
	 table2 as (
	select * from temp_table 
	where Minimum < 1Quartile - 15*(3Quartile - 1Quartile)
	)
	
	select CONCAT(account_info.first_name, ' ', account_info.last_name) as Name, `transaction`.account_number as 'Account Number', `transaction`.transaction_number as 'Transaction Number', `transaction`.merchant_description as 'Merchant', `transaction`.transaction_amount as 'Transaction Amount'
	 from `transaction` 
	inner join table2  on `transaction`.account_number = table2.account_number 
	inner join account_info  on `transaction`.account_number = account_info.account_number
	where `transaction`.transaction_amount < 1Quartile - 15*(3Quartile - 1Quartile)
	order by `transaction`.account_number
	
	