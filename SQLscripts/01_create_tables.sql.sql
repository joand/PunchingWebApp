/*
PostgreSQL script
*/

create table IF NOT EXISTS checkboxField (
	id serial primary key,
	value text
);

create table IF NOT EXISTS form (
	id serial primary key,
	textField text,
	textArea text,
	selectField text,
	radioField text,
	checkboxField integer references checkboxField (id)
);