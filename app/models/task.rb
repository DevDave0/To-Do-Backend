class Task < ApplicationRecord
    has_many :tasklists 
    has_many :users, through: :tasklists
end
