# Tourism Agency Management System
This project covers a Java Swing application developed to manage the operations of tourism agencies. n-layer architecture is used. The project consists of five main packages: DAO (Data Access Object), Business, Entity, Core and View.

# About the project
The tourism agency project is an application that provides hotel management, room reservations, customer information and user management. It includes adding hotels, managing rooms, making reservations and updating customer information. Users are created in different roles such as admin and employee, allowing business processes to be managed more effectively. As a result, the tourism agency project provides services by facilitating travel and accommodation processes.

# Project Demo Video
https://youtu.be/QuybC6NqVU4

# Features
## Hotel Management
You can add new hotels.
View and edit existing hotels.
Update and delete hotel information.
## Room Management
You can add new rooms to a hotel.
View and edit existing rooms.
Update and delete room information.
## Reservation Management
Make reservations and view them.
Update and delete reservation information.
## User Management
Add new users and view existing ones.
Update and delete user information.
Assign "admin" and "employee" roles to users.
## Example Use Cases
Adding a New Hotel: Click the "Add Hotel" button on the main screen to add a new hotel. Visit the "Hotel List" tab to see the added hotels.

Adding a New Room: From the "Add Room" tab, you can add a new room to an existing hotel.

Making a Reservation: Choose a suitable hotel from the "Make Reservation" tab to make a reservation.

User Creation: Create a new user from the "Users" tab and assign either an "admin" or "employee" role to the user.

Reservation Update/Delete: In the "Reservations" tab, you can view, update, or delete existing reservations.

## Project Structure
The project is comprised of five main packages:

dao Layer: Data Access Objects managing database operations.

business Layer: Classes containing business logic operations.

entity Layer: Entity classes representing database tables.

core Layer: Fundamental helper classes and tools.

view Layer: Classes containing Swing User Interface (UI) components.

## Requirements
Java JDK 8 or above
PostgreSQL database
