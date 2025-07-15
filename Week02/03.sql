create table title_copy
(
  copy_id int primary key,
  title_id int not null,
  status varchar(15) not null,
  foreign key(title_id) references title(title_id)
);