class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wall_memberships
  has_many :walls, through: :wall_memberships
  
  def member?(wall)
    self.walls.include?(wall)
  end
  
end
