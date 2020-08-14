class ApplicationController < ActionController::API

    def encode_token(payload)
        JWT.encode(payload, 'flatiron', 'HS256')
    end 

end
