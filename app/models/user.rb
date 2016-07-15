class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
  def admin
    has_attribute?(:admin)
  end
=======
  has_many :wall_memberships
  has_many :walls, through: :wall_memberships
  
  def member?(wall)
    self.walls.include?(wall)
  end
  
>>>>>>> f9f906f5c8009f3ec8442fcaf4825afbc6c5b8e3
end
