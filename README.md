# Welcome to My Users App
***

## Task
According to the task, you need to implement the MVC architecture using Sinatra in the ruby ​​programming language.

## Description
In this project, we are implementing a very famous architecture: MVC "Model View Controller".

## Installation
To implement the project, we need to install sqlite3 and sinatra. Implemented by the following commands in the terminal: install:
gem install sinatra
gem install sqlite3

## Usage
To run, you need to use the following command in the terminal: ruby ​​app.rb
Creating a new user: # curl -X POST -i http://localhost:8080/users -d "firstname=Tlek" -d "lastname=Agaidarov" -d "age=32" -d "password=123" -d "email=tlek@qw.com"
For authorization: # curl -c save_cookies.txt -X POST localhost:8080/sign_in -d email=tlek@qw.com -d password=123 
To change password: # curl -b save_cookies.txt -X PUT localhost:8080/users -d password=1234
Deleting a user: # curl -b save_cookies.txt -X DELETE localhost:8080/sign_out   
# curl -b save_cookies.txt -X DELETE localhost:8080/users 
Getting information about users: # curl http://localhost:8080/users

### The Core Team
agaidar_t
<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
