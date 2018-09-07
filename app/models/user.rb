class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attr_accessor :email, :password, :password_confirmation, :remember_me, :profile_attributes
  has_one :profile
  accepts_nested_attributes_for :profile 

  protected
  	def profile
  		super || build_profile
	end 

end
