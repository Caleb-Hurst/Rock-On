SHOW TABLES;
select * from channel;
select * from user; 
select * from message;

insert into user(username,password) 
values('admin','$2a$10$qNqnbQXkxStGnJn3ksFCnecdW9L8aeYR2NB0l1434fsumO5Wsnr4G');
insert into user(username,password) 
values('john','$2a$10$qNqnbQXkxStGnJn3ksFCnecdW9L8aeYR2NB0l1434fsumO5Wsnr4G');
insert into authorities(authority,user_id) values('ROLE_USER',1);
insert into authorities(authority,user_id) values('ROLE_ADMIN',9);
select * from authorities;
