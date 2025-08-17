# Computer Parts Management System

A web-based Java application for managing computer parts inventory, orders, and customer inquiries.

## Features

- **Product Management**: Browse and manage computer parts inventory
- **Shopping Cart**: Add items to cart and manage orders
- **Customer Management**: User registration and account management
- **Order Processing**: Complete order workflow from cart to billing
- **Inquiry System**: Customer support and feedback system
- **Admin Panel**: Administrative functions for managing the system

## Technology Stack

- **Backend**: Java Servlets, JSP
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript
- **Server**: Apache Tomcat

## Project Structure

```
ComParts_Website/
├── src/
│   └── main/
│       ├── java/
│       │   └── Contact/          # Java servlets and database utilities
│       └── webapp/
│           ├── Images/           # Product images and assets
│           ├── WEB-INF/          # Configuration and libraries
│           └── *.jsp             # JSP pages for the web interface
```

## Setup Instructions

1. **Prerequisites**
   - Java JDK 8 or higher
   - Apache Tomcat 9 or higher
   - MySQL Database

2. **Database Setup**
   - Create a MySQL database
   - Import the database schema (contact the developer for schema details)

3. **Configuration**
   - Update database connection settings in `DBConnect.java`
   - Configure Tomcat server settings

4. **Deployment**
   - Build the project using your preferred IDE
   - Deploy to Tomcat server
   - Access the application via web browser

## Usage

1. **Customer Registration/Login**: Users can create accounts or login
2. **Browse Products**: View available computer parts
3. **Shopping Cart**: Add items to cart and proceed to checkout
4. **Order Management**: Track orders and view order history
5. **Support**: Submit inquiries and feedback

## Contributing

This is a university assignment project. For questions or contributions, please contact the developer.

## License

This project is created for educational purposes as part of a university assignment.

## Developer

- **Name**: Kavindu03-dev
- **GitHub**: [Kavindu03-dev](https://github.com/Kavindu03-dev)
