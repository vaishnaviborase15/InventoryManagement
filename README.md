# Inventory Management

Inventory Management is a Spring MVC web application built with JSP, Spring 5, Hibernate, JDBC, MySQL/MariaDB, and Apache Tomcat 9.

## Technologies

- Java
- Spring MVC 5.2.3
- Hibernate 5.4
- JSP
- MySQL / MariaDB
- Apache Tomcat 9
- Eclipse Enterprise Java

## Database Setup

1. Start MySQL/MariaDB using XAMPP.
2. Create a database named `inventory`.
3. Import `database/inventory.sql` in phpMyAdmin.

## Run In Eclipse

1. Import this project into Eclipse Enterprise Java.
2. Use Apache Tomcat 9 as the runtime.
3. Keep the project compiler level as Java 8 / 1.8 for Spring 5 compatibility.
4. Add the project to Tomcat and start the server.
5. Open `http://localhost:8081/InventoryManagement/` or use your configured Tomcat port.

## Default Login

- Email: `admin@gmail.com`
- Password: `admin`

## Notes

This version includes stock deduction when raw material or processed items are issued. The issued quantity is subtracted from the available quantity, and invalid issue quantities are blocked.
