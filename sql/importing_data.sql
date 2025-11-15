CREATE TABLE assets (
	symobol TEXT PRIMARY KEY,
	asset_name TEXT,
	asset_type TEXT
);

CREATE TABLE prices (
	date DATE,
	symbol TEXT,
	close FLOAT,
	adj_close FLOAT,
	PRIMARY KEY (date, symbol)
);


CREATE TABLE log_returns (
    date DATE,
    symbol TEXT,
    log_return FLOAT,
    PRIMARY KEY (date, symbol)
);
