class User < ActiveRecord::Base
  has_many :posts, class_name: "Post"
  has_and_belongs_to_many :liked, class_name: "Post"

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
