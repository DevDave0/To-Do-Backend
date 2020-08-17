class TasklistsController < ApplicationController

    def index 
        @tasklists = Tasklist.all 
        render json: @tasklists
    end 


end
