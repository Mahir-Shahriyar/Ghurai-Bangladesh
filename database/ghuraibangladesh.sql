CREATE DATABASE ghuraibangladesh

CREATE TABLE Hotel (Hotel_id int(10) NOT NULL AUTO_INCREMENT, hotel_type varchar(30) NOT NULL, hotel_location varchar(30) NOT NULL, hotel_rent int(10) NOT NULL, HotelHotel_id int(10) NOT NULL, Regionregion_id int(10) NOT NULL, PRIMARY KEY (Hotel_id));
CREATE TABLE Booking (booking_id int(10) NOT NULL AUTO_INCREMENT, booking_for_person int(10) NOT NULL, Personperson_id int(10) NOT NULL, HotelHotel_id int(10) NOT NULL, PRIMARY KEY (booking_id));
CREATE TABLE Person (person_id int(10) NOT NULL AUTO_INCREMENT, person_name varchar(30) NOT NULL, person_email varchar(30) NOT NULL UNIQUE, person_phone varchar(30) NOT NULL, person_role binary(2) NOT NULL, PRIMARY KEY (person_id));
CREATE TABLE Destination (destination_id int(10) NOT NULL AUTO_INCREMENT, destination_name varchar(30) NOT NULL, local_transport varchar(30) NOT NULL, local_transport_fare int(10) NOT NULL, tour_guide varchar(30) NOT NULL, Regionregion_id int(10) NOT NULL, PRIMARY KEY (destination_id));
CREATE TABLE Transport (transport_id int(10) NOT NULL AUTO_INCREMENT, transport_type varchar(30) NOT NULL, transport_class varchar(30) NOT NULL, transport_rent int(10) NOT NULL, Regionregion_id int(10) NOT NULL, PRIMARY KEY (transport_id));
CREATE TABLE Region (region_id int(10) NOT NULL AUTO_INCREMENT, region_name varchar(30), HotelHotel_id int(10) NOT NULL, PRIMARY KEY (region_id));
CREATE TABLE Region_Booking (Regionregion_id int(10) NOT NULL, Bookingbooking_id int(10) NOT NULL, PRIMARY KEY (Regionregion_id, Bookingbooking_id));
ALTER TABLE Hotel ADD CONSTRAINT FKHotel324684 FOREIGN KEY (Regionregion_id) REFERENCES Region (region_id);
ALTER TABLE Transport ADD CONSTRAINT FKTransport626330 FOREIGN KEY (Regionregion_id) REFERENCES Region (region_id);
ALTER TABLE Booking ADD CONSTRAINT FKBooking205104 FOREIGN KEY (Personperson_id) REFERENCES Person (person_id);
ALTER TABLE Booking ADD CONSTRAINT FKBooking956763 FOREIGN KEY (HotelHotel_id) REFERENCES Hotel (Hotel_id);
ALTER TABLE Region_Booking ADD CONSTRAINT FKRegion_Boo568837 FOREIGN KEY (Regionregion_id) REFERENCES Region (region_id);
ALTER TABLE Region_Booking ADD CONSTRAINT FKRegion_Boo630931 FOREIGN KEY (Bookingbooking_id) REFERENCES Booking (booking_id);
ALTER TABLE Destination ADD CONSTRAINT FKDestinatio431438 FOREIGN KEY (Regionregion_id) REFERENCES Region (region_id);
ALTER TABLE hotel ADD COLUMN hotel_name VARCHAR(30);
ALTER TABLE `person` CHANGE `person_role` `person_role` INT(2) NOT NULL DEFAULT '0';
Alter table booking Drop FOREIGN KEY FKBooking205104;
Alter table booking Drop COLUMN Personperson_id;
ALTER TABLE `booking`  ADD `person_email` VARCHAR(30) NOT NULL  AFTER `booking_for_person`;
