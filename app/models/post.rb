class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :likes, class_name: "User"
end
