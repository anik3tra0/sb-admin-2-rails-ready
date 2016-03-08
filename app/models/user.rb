class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :assign_role
  def assign_role
    if User.count == 0
      self.role = "admin"
    else
      self.role = "guest"
    end
  end

end
