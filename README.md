# Spring Security Demo — Spring Boot 4.x + JSP + MySQL

A full-stack Spring Boot web application demonstrating role-based authentication and authorization using Spring Security 7, JSP views, and MySQL.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Spring Boot 4.1.0 |
| Security | Spring Security 7.1.0 |
| View | JSP + JSTL |
| Database | MySQL 8 |
| ORM | Spring Data JPA + Hibernate 7 |
| Build Tool | Maven |
| Java | Java 21 |

---

## Project Structure

<img width="254" height="389" alt="image" src="https://github.com/user-attachments/assets/d708941b-aa73-4582-8e21-861b72986df0" />

---

## ⚙️ Setup & Installation

### Prerequisites
- Java 21
- Maven 3.8+
- MySQL 8.0+
- IntelliJ IDEA (recommended)

### 1. Clone the repository

bash
git clone https://github.com/Shaquib07/spring-security.git
cd spring-security


### 2. Create the MySQL database

sql
CREATE DATABASE demo_project;


### 3. Configure application.properties

spring.datasource.url=jdbc:mysql://localhost:3306/demo_project

spring.datasource.username=your_username

spring.datasource.password=your_password

### 4. Run the application

bash
mvn spring-boot:run

### 5. Access the app

http://localhost:8086/login


---

## 🔐How Authentication Works

### Login Flow


GET  /login      → shows home.jsp with login form
POST /login      → Spring Security authenticates credentials
                 → success → GET /dashboard
GET  /dashboard  → checks user role
                 → ROLE_ADMIN → redirect /admin
                 → ROLE_USER  → redirect /user
GET  /logout     → clears session → redirect /login


### Role-Based Access

| URL | Role Required |
|---|---|
| /login | Public |
| /dashboard | Any authenticated user |
| /user | ROLE_USER |
| /admin | ROLE_ADMIN |

Done.

