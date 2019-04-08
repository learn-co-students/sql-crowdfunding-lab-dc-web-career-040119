create table projects (
	id INTEGER PRIMARY KEY,
	title text, 
	category text, 
	funding_goal numeric, 
	start_date text, 
	end_date text
);

create table users (
	id INTEGER PRIMARY KEY,
	name text, 
	age int
);

create table pledges (
	id INTEGER PRIMARY KEY,
	amount numeric, 
	user_id INTEGER,
	project_id INTEGER
);
