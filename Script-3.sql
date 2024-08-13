SELECT *
FROM bid_request br 
WHERE br.client_request_id = ?
ORDER BY br.budget_type asc, br.bid_price ASC