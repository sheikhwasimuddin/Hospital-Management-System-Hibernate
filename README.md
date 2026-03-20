# 🏥 Hospital Management System (Hibernate)

A **Java-based Hospital Management System** built using **Hibernate ORM** for efficient database operations and management of hospital-related records.  
This project demonstrates how **Hibernate Framework** can be used to perform **CRUD operations** and manage relationships between entities in a hospital environment.

---

## 📌 Project Overview

The **Hospital Management System** is designed to simplify and digitize the management of hospital data such as:

- Patient Records
- Doctor Information
- Appointments
- Departments
- Billing / Medical Records *(if implemented)*

This project is useful for understanding:

- Java + Hibernate integration
- ORM (Object Relational Mapping)
- Database connectivity
- Entity relationships
- CRUD operations in real-world applications

---

## 🚀 Features

- ➕ Add new patient records
- 👨‍⚕️ Manage doctor details
- 📅 Schedule and manage appointments
- 🏥 Maintain hospital departments
- ✏️ Update existing records
- ❌ Delete records
- 🔍 Search / fetch hospital data
- 🗄️ Database operations using Hibernate ORM

> **Note:** Features may vary depending on the current implementation in the project.

---

## 🛠️ Tech Stack

- **Java**
- **Hibernate ORM**
- **Maven**
- **MySQL** *(or your configured database)*
- **JDBC**
- **IntelliJ IDEA**
- **Git & GitHub**

---

## 📂 Project Structure

```bash
Hospital-Management-System-Hibernate/
│── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── ... (Java source files)
│   │   ├── resources/
│   │   │   └── hibernate.cfg.xml
│── pom.xml
│── README.md
```
⚙️ Setup & Installation
1️⃣ Clone the repository
git clone https://github.com/sheikhwasimuddin/Hospital-Management-System-Hibernate.git
cd Hospital-Management-System-Hibernate
2️⃣ Open in IntelliJ IDEA

Open IntelliJ IDEA

Click Open

Select the project folder

3️⃣ Configure Database

Make sure your database is created in MySQL (or your chosen DB).

Update your hibernate.cfg.xml file with your database credentials:

<property name="hibernate.connection.driver_class">com.mysql.cj.jdbc.Driver</property>
<property name="hibernate.connection.url">jdbc:mysql://localhost:3306/hospital_db</property>
<property name="hibernate.connection.username">root</property>
<property name="hibernate.connection.password">your_password</property>
<property name="hibernate.dialect">org.hibernate.dialect.MySQL8Dialect</property>
4️⃣ Install Dependencies

If using Maven:

mvn clean install
5️⃣ Run the Project

Run the main class from IntelliJ IDEA or via terminal.

🧩 Hibernate Concepts Used

This project demonstrates:

Hibernate Configuration (hibernate.cfg.xml)

Entity Mapping

Annotations / XML Mapping (depending on implementation)

Session Factory

Sessions & Transactions

CRUD Operations

ORM-based database handling

📸 Screenshots

You can add project screenshots here after uploading images.

Example:

## 📸 Screenshots

### Main Menu
![Main Menu](screenshots/main-menu.png)

### Patient Management
![Patient Management](screenshots/patient-management.png)
📈 Learning Outcomes

Through this project, I learned:

How to integrate Hibernate with Java projects

How ORM simplifies database interaction

How to manage entity relationships

How to perform CRUD operations using Session and Transaction

How to structure a Java backend project using Maven

🔮 Future Improvements

Add GUI using Java Swing / JavaFX

Add authentication for admin/staff

Improve exception handling

Add billing and prescription modules

Add report generation

Convert into a full web-based application using Spring Boot + Hibernate

👨‍💻 Author

Sheikh Wasimuddin

GitHub: @sheikhwasimuddin
