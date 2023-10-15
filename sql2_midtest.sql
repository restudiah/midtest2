SELECT email_address
FROM email_list
GROUP BY email_address
HAVING COUNT(*) > 1;
