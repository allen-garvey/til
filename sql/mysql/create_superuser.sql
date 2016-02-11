-- create superuser in mysql

CREATE USER 'user_name'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'user_name'@'localhost';
FLUSH PRIVILEGES;