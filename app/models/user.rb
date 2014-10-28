class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :recipes
  has_many :ingredients, through: :recipes
  has_many :cuisines
  has_and_belongs_to_many :lists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
