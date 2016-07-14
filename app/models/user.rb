class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  #def admin
   #has_attribute?(:admin)
  #end
  #def admin
   #to_s == '#<User:0x007f90d4614920>'
  #end
  def admin
    :name == '#<User:0x007f90e0d608a8>'
  end
end
