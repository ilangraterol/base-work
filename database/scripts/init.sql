--tabla de usuarios
CREATE TABLE auth_user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(150) NOT NULL,
  password VARCHAR(128) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(150) NOT NULL,
  email VARCHAR(254) NOT NULL,
  is_staff TINYINT(1) NOT NULL,
  is_active TINYINT(1) NOT NULL,
  date_joined DATETIME NOT NULL
);

--perfiles de usuario
CREATE TABLE auth_profile (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  bio TEXT,
  avatar VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES auth_user(id)
);
