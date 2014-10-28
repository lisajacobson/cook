class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  # validates :name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
