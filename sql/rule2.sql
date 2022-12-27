SELECT CONCAT(a.first_name, ' ',a.last_name) as Name, a.account_number as 'Account Number', t.transaction_number as 'Transaction Number', a.state as 'Expected Transaction Location', RIGHT(t.merchant_description, 2) as 'Actual Transaction Location'
from `transaction` t
inner JOIN `account_info` a
on t.account_number = a.account_number
where RIGHT(merchant_description, 2) != a.state
order by a.account_number