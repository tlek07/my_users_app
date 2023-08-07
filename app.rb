require 'sinatra'
require_relative './my_user_model'
require_relative './user_controller'

set('views', './views')
enable :sessions
set :port, 8080
set :bind, '0.0.0.0'

use UserController 

get '/' do
  erb :index
end

# curl -X POST -i http://localhost:8080/users -d "firstname=Tlek" -d "lastname=Agaidarov" -d "age=32" -d "password=123" -d "email=tlek@qw.com"
# curl -c save_cookies.txt -X POST localhost:8080/sign_in -d email=tlek@qw.com -d password=123 
# curl -b save_cookies.txt -X PUT localhost:8080/users -d password=1234
# curl -b save_cookies.txt -X DELETE localhost:8080/sign_out   
# curl -b save_cookies.txt -X DELETE localhost:8080/users 


# curl -X POST -i http://localhost:8080/users -d "firstname=User" -d "lastname=Qwant" -d "age=11" -d "password=123" -d "email=user@qwant.kz"
# curl -c save_cookies.txt -X POST localhost:8080/sign_in -d email=user@qwant.kz -d password=123
# curl -b save_cookies.txt -X PUT localhost:8080/users -d password=1234
# curl -b save_cookies.txt -X DELETE localhost:8080/sign_out   
# curl -b save_cookies.txt -X DELETE localhost:8080/users 

# curl http://localhost:8080/users

# https://web-tf16a46a1-a0be.docode.fi.qwasar.io/

