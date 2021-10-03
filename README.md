# Flyaway (An Airline Booking Portal) Web App in JAVA using Servlet & JSP

## Table of contents
* [Using the application](#using-the-application)
* [Technologies Used](#technologies-used)
* [Demo](#demo)
* [Setup](#setup)

## Using the application
Homepage displays the application name (FlyAway) and two options - Book Flights and Admin Login Access.

<img width="720" alt="flyaway-screenshot-homepage" src="https://raw.githubusercontent.com/Niks4u2/FlyAway/main/Screenshots/LandingPage.PNG">

<b>Book Flights</b>  - <br>
The user enters flight details (date, source, destination, travellers). 
A query is sent to the remote database that is hosted on AWS RDS for MySQL to fetch related flights and displayed to the user.
The User enters the personal and payment details and proceeds to book the flight. After clicking the checkout button, they are shown a confirmation page with
the details of the booking.
<br><br>
<b>Admin</b>  - <br>
Admin dashboard is accessed with a preset username and password.
Admin can see all entries in database table.
Admin can change the password and add Flight Details after Login. 

## Technologies Used
<b>Frontend</b> - HTML, CSS, Bootstrap and JSP <br>
<b>Backend</b> - JAVA Servlets and Hibernate for Object Mapping <br>
<b>Database</b> - MySQL - Hosted on a remote server at [AWS RDS](https://aws.amazon.com/rds/mysql/) <br>
<b>Application Server</b>  - Tomcat 8.5 with Corretto 11 running on 64bit Amazon Linux 2/4.1.6 on AWS Elastic Beanstalk <br>

## Demo
Application is hosted [here](http://flyaway-env-1.eba-4f85ddgn.ap-south-1.elasticbeanstalk.com/) on AWS Elastic Beanstalk.
## Setup
To run in your localhost - Clone the project into your local directory. Edit the `hibernate.cfg.xml` file properites such as username, password, Driver Class Name and Connection URL. Then run the project on Apache Tomcat server 10.0.*
<br><br>
To deploy on a server use `flyaway.war` file.
