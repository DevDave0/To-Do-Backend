class TasksController < ApplicationController

    skip_before_action :logged_in?, only: [:create, :index]

    def index 
        @tasks = Task.all 
        render json: @tasks
    end 

end
