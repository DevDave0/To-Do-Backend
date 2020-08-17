class ApplicationController < ActionController::API

    before_action :logged_in?

    def encode_token(payload)
        JWT.encode(payload, 'flatiron', 'HS256')
    end 


    def logged_in? 

        headers = request.headers["Authorization"]
        token = headers.split(' ')[1]

        begin
            user_id = JWT.decode(token, 'flatiron', 'HS256')[0]["user_id"]
            user = User.find(user_id)
        rescue 
            nil 
        end 


        render json: {error: "Please log in"} unless user
    end 

end
