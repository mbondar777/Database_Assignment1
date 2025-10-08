DROP DATABASE IF EXISTS movie;
CREATE DATABASE movie;
USE movie;

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ratings;

CREATE TABLE movies (
  movie_id     INT PRIMARY KEY,
  title        VARCHAR(100),
  release_year INT,
  country      VARCHAR(50),
  genre		   VARCHAR(100)
);

CREATE TABLE persons (
  person_id  INT PRIMARY KEY,
  name       VARCHAR(100),
  birth_year INT,
  country    VARCHAR(50)
);

CREATE TABLE roles (
  role_id   INT PRIMARY KEY,
  movie_id  INT,
  person_id INT,
  role_name VARCHAR(20)
);

CREATE TABLE users (
  user_id  INT PRIMARY KEY,
  username VARCHAR(50),
  country  VARCHAR(50)
);

CREATE TABLE ratings (
  rating_id   INT PRIMARY KEY,
  movie_id    INT,
  user_id     INT,
  rating      DECIMAL(3,1)
);






