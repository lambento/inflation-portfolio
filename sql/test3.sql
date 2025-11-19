SELECT * 
FROM assets;

SELECT COUNT(*)
FROM assets;


SELECT MIN(Date), MAX(Date) FROM assets;
SELECT AVG(GLD), MAX(SPY), MIN(TIPS) FROM assets;

SELECT CURRENT_USER;

SELECT inet_server_addr(); -- Returns the IP address of the server
SELECT inet_server_port(); -- Returns the port the server is listening on


SELECT * FROM assets
LIMIT 10; 


SELECT * FROM assets
WHERE date >= '2015-1-1';

SELECT * FROM assets
WHERE symbol = 'SPY'


SELECT 'Date','GLD', 'SPY'
FROM assets;
