# BarkBond

BarkBond is a web application dedicated to helping rescue pets find their forever homes. Inspired by the journey of a beloved rescue dog, Eevee, this platform connects pets in need with families who can provide them with the love and care they deserve.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Database Schema](#database-schema)
- [Status](#status)

## Features

- User registration and authentication
- Role-based access control (Admin and User roles)
- Pet adoption listings
- User dashboard for managing pet listings
- Error handling and user-friendly messages

## Technologies Used

- Java
- Spring Boot
- Spring Security
- Spring Data JPA
- Hibernate
- MySQL
- JSP
- HTML/CSS
- JavaScript
- Lombok

## Getting Started

### Prerequisites

- Java 17 or higher
- Maven
- MySQL

### Installation

1. **Clone the repository**:

   ```sh
   git clone https://github.com/crystalogy/Barkbond-fullstack.git
   cd Barkbond-fullstack

   ```

2. Set up the MySQL database:

   ```sql
   CREATE DATABASE barkbond;
   CREATE USER 'Crystal'@'localhost' IDENTIFIED BY 'Mysql99rt1234!';
   GRANT ALL PRIVILEGES ON barkbond.* TO 'Crystal'@'localhost';
   FLUSH PRIVILEGES;
   ```

3. Update the database configuration in `src/main/resources/application.properties` if necessary.

4. Build the project:
   git push origin master

   ```sh
   ./mvnw clean install
   ```

5. Run the application:

   ```sh
   ./mvnw spring-boot:run
   ```

6. Open your browser and navigate to [http://localhost:8080].

## Project Structure
```
├── .gitignore
├── .idea/
├── .mvn/
├── assets/
├── src/
│ ├── main/
│ │ ├── java/
│ │ │ └── com/
│ │ │ └── barkbond/
│ │ │ ├── controller/
│ │ │ ├── database/
│ │ │ ├── form/
│ │ │ ├── security/
│ │ │ └── service/
│ │ ├── resources/
│ │ │ └── application.properties
│ │ └── webapp/
│ │ └── WEB-INF/
│ │ └── jsp/
│ └── test/
│ └── java/
├── target/
├── mvnw
├── mvnw.cmd
├── package.json
├── pom.xml
└── README.md
```

## Database Schema

### User

| Column      | Type    | Description           |
| ----------- | ------- | --------------------- |
| id          | Integer | Primary key           |
| email       | String  | User's email          |
| password    | String  | User's password       |
| first_name  | String  | User's first name     |
| last_name   | String  | User's last name      |
| create_date | Date    | Account creation date |

### UserRole

| Column      | Type    | Description             |
| ----------- | ------- | ----------------------- |
| id          | Integer | Primary key             |
| user_id     | Integer | Foreign key to User     |
| role_name   | String  | Role name (e.g., ADMIN) |
| create_date | Date    | Role assignment date    |

### Status

This project is currently under development and is not yet complete.
