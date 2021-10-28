create database corp;
create schema corp;

create table corp.user
(
    id int
        constraint user_pk
            primary key,
    name text
);

-- this is a hack to get the old and the new record
alter table corp.user replica identity full;


select * from corp.user;
insert into corp.user (id, name)
values (1,'v1');
update corp.user set name = 'v1.1' where id = 1;