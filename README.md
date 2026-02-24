# Secure Communication and File Transfer System Using Blockchain



##  Project Overview

Secure Communication and File Transfer System Using Blockchain Technology is a web-based application developed using Java, JSP, Servlets, and MySQL to provide secure and tamper-resistant file sharing. The system integrates encryption techniques to protect file data and a custom blockchain module to record file transactions in an immutable chain structure.

It supports multiple roles such as Admin, Owner, and User, ensuring role-based access control. Every important action—like file upload, request, approval, or communication—is securely logged, improving transparency, data integrity, and system reliability.



---



##  Problem Statement

Traditional file-sharing and communication systems are centralized and vulnerable to security threats such as unauthorized access, data breaches, and data tampering. These systems often lack transparency and reliable mechanisms to verify whether stored data has been modified.

To address these issues, this project implements a secure file transfer system using encryption and blockchain-based logging. Files are encrypted before storage, and each transaction is recorded in a hash-linked block structure, ensuring data integrity, accountability, and improved security in digital communication.


---



##  System Architecture

- User uploads file
- File encrypted using AES
- File stored in database
- Transaction recorded in blockchain
- Access request handled by owner/admin


---

## ⚙️ System Requirements

### Software Requirements
- Java JDK 8 or above
- Apache Tomcat Server (v8 or v9 recommended)
- MySQL Server (5.x or above)
- MySQL Connector (JDBC driver)
- Eclipse IDE (for development)

---
##  Technologies Used

- Java
- JSP
- Servlets
- MySQL
- JDBC
- AES Encryption
- Custom Blockchain Implementation

---
  
## 🛠 How to Run the Project

1. Install MySQL and create database:
   secure_communication_db

2. Import the file:
   final_db.sql

3. Open project in Eclipse.

4. Configure Apache Tomcat Server.

5. Add MySQL Connector JAR to project build path.

6. Run the project on server.

7. Open browser:
   http://localhost:8080/ProjectName

---
##  Database Setup

1. Install MySQL
2. Create database: secure\_communication\_db
3. Import `final\_db.sql`

---


##  My Contribution

As part of the **Secure Communication and File Transfer System using Blockchain**, I was responsible for designing and managing the backend database architecture to ensure secure, efficient, and scalable data operations.

I designed the MySQL database schema in `final_db.sql`, defining structured tables, relationships, and constraints to maintain data integrity and support blockchain-based transaction logging. I developed and optimized SQL queries for data retrieval (SELECT), data manipulation (INSERT, UPDATE, DELETE), and authentication processes.

Additionally, I implemented the database connection layer using JDBC in `Dbconn.java`, where I managed driver loading, connection establishment, statement execution, result processing, and proper resource cleanup. I also applied basic performance optimization techniques such as indexing and query refinement to improve system responsiveness as user and transaction volume increases.

My contributions ensured seamless interaction between the web application and the database while maintaining security, reliability, and performance standards.





---



##  Security Features

- AES encryption for file security

- Hash-based blockchain logging

- Role-based access control

