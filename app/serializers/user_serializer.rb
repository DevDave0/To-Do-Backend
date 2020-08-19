class UserSerializer < ActiveModel::Serializer
  attributes :name, :avatar, :id, :experience_bar

  has_many :tasklists 
  has_many :tasks, through: :tasklists 
  has_many :comments
  has_many :boards, through: :comments
end
