CREATE TABLE users (
 username VARCHAR(255) NOT NULL PRIMARY KEY,
 password VARCHAR(255) NOT NULL
);

CREATE TABLE users_roles (
 username VARCHAR(255) NOT NULL REFERENCES users,
 role VARCHAR(255) NOT NULL,
 PRIMARY KEY (username, role)
);

CREATE TABLE roles_perms (
 role VARCHAR(255) NOT NULL,
 perm VARCHAR(255) NOT NULL,
 PRIMARY KEY (role, perm)
);