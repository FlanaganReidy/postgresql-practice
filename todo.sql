

CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR (255) NOT NULL,
details VARCHAR(500) NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP with TIME ZONE NOT NULL DEFAULT now(),
completed_at TIMESTAMP with TIME ZONE NULL
);

INSERT INTO todos (title, priority, completed_at) VALUES ('Write Todos', 2, '2017-08-29');
INSERT INTO todos (title, priority) VALUES ('Understand Postresql', 4);
INSERT INTO todos (title) VALUES ('Build Balan');
INSERT INTO todos (title, priority, completed_at) VALUES ('Buy Feline Ferocity', 6, '2017-8-25 04:05:06');
INSERT INTO todos (title, completed_at) VALUES ('Buy New Clothes', '2017-8-17 04:05:06');

SELECT title from todos where completed_at is null;
select title from todos where priority > 1;
update todos set completed_at = now() where id = 3;
delete from todos where completed_at is not null;
