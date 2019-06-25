# README

* Ruby version - ruby 2.6.3p62

* Rails version - Rails 5.2.3

* Database - postgres (PostgreSQL) 11.3

* Deployment instructions 
    - rails db:migrate
    - rails s
Start angular with ng serve

for calculating price of room:
    - Room rates are already defined in the Database for different dates of a month and room type
    - In the database, the model name is "price" where "date" column has the dates of a month and other columns are based on the room types
    - Room rates can be different for different dates
    - To calculate average price of a room, we calculate the average room rent for a specific room type selected by the user
    - Once the average price per day is obtained, that, multiplied by the date range (move-in and move-out range) gives gives the total price
 
 Hotel availability check logic:
    - Once booking is made for a specific room, availability of that room is then set to 'False' in the backend
    - Then check for availability of that room_type in the same hotel where was made. 
    - If there are no rooms available of the same room_type, then it is set to 'False' and positive otherwise
    
for getting available rooms
    - First find which rooms are already booked for the date range specified by the user
    - Then exclude those rooms so that user does not see them, show only the available onees
    

