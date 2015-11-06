class Post < ActiveRecord::Base
  has_many :like_instances, class_name: "Like"
  belongs_to :user
  has_many :liked_by, class_name: "User", through: :likes

  def likes
    like_instances.length
  end

end
