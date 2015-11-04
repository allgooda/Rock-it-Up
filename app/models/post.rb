class Post < ActiveRecord::Base
  has_many :like_instances, class_name: "Like"
  belongs_to :user
  has_and_belongs_to_many :liked_by, class_name: "User"

  def likes
    like_instances.length
  end

end
