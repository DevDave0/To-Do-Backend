class User < ApplicationRecord
    has_secure_password

    has_many :tasklists 
    has_many :tasks, through: :tasklists 
    has_many :comments
    has_many :boards, through: :comments
end
