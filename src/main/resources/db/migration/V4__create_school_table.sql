                  CREATE TABLE school (
                      id INT AUTO_INCREMENT PRIMARY KEY,
                      name VARCHAR(255) NOT NULL,
                      email VARCHAR(255) NOT NULL UNIQUE,
                      position VARCHAR(100),
                      salary DECIMAL(10,2),
                      hire_date DATE
                  );
