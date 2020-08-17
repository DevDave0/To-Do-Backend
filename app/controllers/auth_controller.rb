class AuthController < ApplicationController

    skip_before_action :logged_in?, only: [:create]

    def create 
        user = User.find_by(name: params[:name])

        if user && user.authenticate(params[:password])
            render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
        else
            render json: {error: "Invalid username or password"}  
        end 
    end 


end 