## README

## Learning relational database with Ruby and Rails (PostgreSQL)

# THE PROJECT (Back-end)

	We will implement 'AirBnb' webapp in version beta V0.0 which the goal is to book a room

	for this website app, we solely create the models, so tables too and link modals among them as stated below


## TABLES AND DEPENDENCIES

### 'Many-to-Many' relations

	User-City : through JoinTableUserVille

### 'One-to-Many' relations

	User-Accommodation
	User-Reservation
	User-JoinTableUserVille
	City-Accommodation
	City-JoinTableUserVille
	Accommodation-Reservation

## Specs

	. Ruby version : 2.5.1
	. PostgreSQL version : 9.5

## Installation

	To install the project, follow these steps :

    1. Use command git clone to clone the project on your environnment or 'Download Repository'
    2. Use command 'cd' to go in the project's repository
    3. Use command 'bundle install' to install all the gem dependencies

## Run

	To run the project, follow these steps :
	1. Use command 'rails db:migrate' to create the database
    2. Use command 'rails db:seed' to automatically populate data into the database and the models

## Test via Rails console

	launch command 'rails console --sandbox' via the terminal
