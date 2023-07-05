This is a simple RESTful API for tracking heroes and their superpowers. It is built with Ruby on Rails.

We have three models: Hero, Power, and HeroPower.

Models
The following relationships have been established:

A Hero has many Powers through HeroPower

A Power has many Heros through HeroPower

A HeroPower belongs to a Hero and belongs to a Power



Validations
In HeroPower model:

strength must be one of the following values: 'Strong', 'Weak', 'Average'
In Power model:

description must be present and at least 20 characters long
Routes

The following routes have been set up:

GET /heroes: Returns a list of all heroes in the database
GET /heroes/:id: Returns information about a specific heroes, including their powers
GET /powers: Returns a list of all powers in the database.
GET /powers/:id: Returns a specific power in the database.
PATCH /powers/:id: Update an existing power's description.
POST /hero_powers: Creates a new HeroPower and associates it with an existing Hero and Power
Errors

If a request is made with invalid parameters, the API will respond with a JSON error message.

If a request is made to incorrect resources, the API will respond with a JSON error message.

Tools Used
This project was built with the following tools:

Ruby on Rails
Documentation on the Ruby language can be found here: Ruby Docs

Pre-requisites
In order to use this repo you need to have the following installed:

OS [either: Windows 10+, Linux or MacOS(running on x86 or arm architecture)]
Ruby - 3.1.+
Installation
To use this repo on your machine requires some simple steps

Alternative One
Open a terminal / command line interface on your computer

Clone the repo by using the following:

 https://github.com/sherrykisilu/superheroes-api
Be patient as it creates a copy on your local machine for you.

Change directory to the repo folder:

  cd phase-4-wk2-code-challenge-superheroes
(Optional) Open it in Visual Studio Code

  code .
(Alternate Option) Open it in any editor of your choice.

Alternative Two
On the top right corner of this page there is a button labelled Fork.

Click on that button to fork the repo to your own account.

Take on the process in Alternative One above.

Remember to replace your username when cloning.

  git clone https://github.com/your-username-here/phase-4-wk2-code-challenge-superheroes
Running the application
Running the application is very straight forward. You can use the following steps to run the app.

Install required gems

bundle install
Migrate the tables onto the database

rails db:migrate
Seed in the data from the Seed file

rails db:seed
Run the application on the terminal

rails server
The API can then be accessed using a tool like Postman.

Authors
This project was contributed to by:
Sherry Kisilu
