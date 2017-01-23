CREATE TABLE users (
  username      VARCHAR(255) NOT NULL PRIMARY KEY UNIQUE,
  password      VARCHAR(255) NOT NULL,
  password_salt VARCHAR(255) NOT NULL
);

CREATE TABLE users_roles (
  username VARCHAR(255) NOT NULL,
  role     VARCHAR(255) NOT NULL
);

CREATE TABLE roles_perms (
  role VARCHAR(255) NOT NULL,
  perm VARCHAR(255) NOT NULL
);
