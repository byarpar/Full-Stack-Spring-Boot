# Spring Boot Application

## Description

This repository contains a Spring Boot application designed to manage a system for meal orders and donations. The application features a range of functionalities including user management, role-based access control, and meal ordering. It provides a RESTful API and a web interface for users to interact with the system.

### Features

- **User Management:** Users can register, log in, and manage their profiles. 
- **Role-Based Access Control:** Differentiated access levels for administrators and regular users.
- **Meal Ordering:** Users can browse available meals, place orders, and view order history.
- **Donations:** Users can make donations to support meal services.
- **Admin Dashboard:** Administrators can manage users, roles, and view system metrics.

### Technologies Used

- **Java:** Programming language used to build the application.
- **Spring Boot:** Framework for creating stand-alone, production-grade Spring-based applications.
- **MySQL:** Database for storing application data.
- **JSP:** Technology used for rendering views in the web interface.
- **Maven:** Build automation tool used for dependency management and project builds.

## Prerequisites

To run and deploy this application, you will need:

- **Java Development Kit (JDK) 11 or higher:** Required to build and run the application.
- **Apache Maven:** Used for building and managing the application dependencies.
- **MySQL Database:** Required for storing application data.
- **Railway account (for deployment):** For deploying the application to the cloud.

## Running Locally

### Step 1: Clone the Repository

To get a copy of the application on your local machine, use the following commands:

```bash
git clone https://github.com/username/repository-name.git
cd repository-name
```
## Step 2: Create Database Schema
```bash
CREATE SCHEMA `springboot_app_db` DEFAULT CHARACTER SET utf8;
```
### Step 3: Configure the Application
Update the src/main/resources/application.properties file with your database connection details:
```bash
# Server port
server.port=8080

# View resolver configuration
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

# Database configuration
spring.datasource.url=jdbc:mysql://localhost:3306/springboot_app_db
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

```
### Step 4: Build and Run the Application
Build the Application: Compile and package the application using Maven:
```bash

mvn clean install

```
Run the Application: Start the application with Maven:
```bash
mvn spring-boot:run
```
The application will be accessible at http://localhost:8080.

### Step 5: Insert Initial Data
```bash
-- Insert data into Role table
INSERT INTO `springboot_app_db`.`role` (`id`, `description`, `name`) VALUES ('1', 'for admin', 'Administrator');
INSERT INTO `springboot_app_db`.`role` (`id`, `description`, `name`) VALUES ('2', 'for user', 'User');

-- Insert data into User table
INSERT INTO `springboot_app_db`.`user` (`id`, `name`, `password`, `user_name`) VALUES ('1', 'admin', 'admin', 'admin');

-- Insert data into User Role table
INSERT INTO `springboot_app_db`.`user_role` (`user_id`, `role_id`) VALUES ('1', '1');

```

## Teamwork

This project has been a collaborative effort involving a diverse team with various skills and expertise. The team has worked together to ensure the successful development and deployment of the Spring Boot application.

### Team Members

- Byar Par:
- Kaung Myat Thu:
- Seng Nu Pan:
- Kayan Win Ji:
- Hsu Thadar:
  
### Collaboration

- **Planning and Design:** The team conducted several planning sessions to define the project scope, design the architecture, and outline the features and functionalities.
- **Development:** Team members worked in parallel on different aspects of the project. Regular code reviews and integration meetings were held to ensure cohesive development.
- **Testing:** The application underwent rigorous testing, with team members contributing to the identification and resolution of bugs and issues.
- **Deployment:** Deployment tasks were coordinated to ensure smooth transitions from local development to cloud deployment. Team members collaborated on configuring Railway and monitoring deployment progress.

### Contributions

Each team member's unique contributions were vital to the project’s success. Their expertise in different areas helped overcome challenges and deliver a robust and efficient application.

We value and encourage feedback and contributions from the community. If you have suggestions or wish to collaborate, please reach out to us or contribute directly through GitHub.

Thank you to all team members for their hard work and dedication to this project!

## Deploying
