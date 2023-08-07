require 'json'

class UserController < Sinatra::Base
  get '/users' do
    User.all.map(&:to_hash).to_json
  end

  post '/sign_in' do
    user = User.filter_password(params['email'], params['password'])
    if user
      session[:user_id] = user.id
      session[:password] = user.password
      "Signed in"
    else
      "Not authorized"
    end
  end

  post '/users' do
    User.create(params)
    "User created"
  end

  put '/users' do
    if session[:user_id]
      user_updated = User.update(session[:user_id], :password, params['password'])
      "#{user_updated}"
    else
      "Not authorized"
    end
  end

  delete '/sign_out' do
    if session[:user_id]
      user = User.get(session[:user_id])
      session[:user_id] = false
      "Signed out"
    end
  end

  delete '/users' do
    if session[:user_id]
      user = User.get(session[:user_id])
      if user
        User.destroy(session[:user_id])
        session[:user_id] = false
        "User deleted"
      end
    end
  end
end
