create table title
(
  title_id int,
  title varchar(60) not null,
  description varchar(400) not null,
  rating varchar(4),
  category varchar(20),
  release_date date,
  primary key `title_title_id` (title_id)
);