class UserSerializer < ActiveModel::Serializer
  attributes :name, :avatar, :id

  has_many :tasklists 
  has_many :tasks, through: :tasklists 
  has_many :comments
  has_many :boards, through: :comments
end
