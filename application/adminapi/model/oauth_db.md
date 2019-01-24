###############################
### oauth2 tables
###############################
drop table if exists `oauth_client`;
drop table if exists `oauth_access_token`;
drop table if exists `oauth_authorization_code`;
drop table if exists `oauth_refresh_token`;
drop table if exists `user`;

CREATE TABLE `oauth_client` (
`client_id` VARCHAR(80) NOT NULL, 
`client_secret` VARCHAR(80) NOT NULL, 
`redirect_uri` VARCHAR(2000) NOT NULL, 
CONSTRAINT client_id_pk PRIMARY KEY (client_id)
);

CREATE TABLE `oauth_access_token` (
`access_token` VARCHAR(40) NOT NULL, 
`client_id` VARCHAR(80) NOT NULL, 
`user_id` VARCHAR(255), 
`expires` TIMESTAMP NOT NULL, 
`scope` VARCHAR(2000), 
CONSTRAINT access_token_pk PRIMARY KEY (access_token)
);

CREATE TABLE `oauth_authorization_code` (
`authorization_code` VARCHAR(40) NOT NULL, 
`client_id` VARCHAR(80) NOT NULL, 
`user_id` VARCHAR(255), 
`redirect_uri` VARCHAR(2000), 
`expires` TIMESTAMP NOT NULL, 
`scope` VARCHAR(2000), 
CONSTRAINT auth_code_pk PRIMARY KEY (authorization_code)
);

CREATE TABLE `oauth_refresh_token` (
`refresh_token` VARCHAR(40) NOT NULL, 
`client_id` VARCHAR(80) NOT NULL, 
`user_id` VARCHAR(255), 
`expires` TIMESTAMP NOT NULL, 
`scope` VARCHAR(2000), 
CONSTRAINT refresh_token_pk PRIMARY KEY (refresh_token)
);

-- 
CREATE TABLE `user` (
`user_id` INT(11) NOT NULL AUTO_INCREMENT,
`username` VARCHAR(255) NOT NULL, 
`password` VARCHAR(2000), 
`first_name` VARCHAR(255), 
`last_name` VARCHAR(255), 
CONSTRAINT user_pk PRIMARY KEY (user_id)
);