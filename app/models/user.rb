class User < ActiveRecord::Base
  has_many :posts, class_name: "Post"
  has_many :liked, class_name: "Post", through: :likes

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
