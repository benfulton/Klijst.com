class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :authorizations, :dependent => :destroy

  # Setup accessible (or protected) attributes for your model
<<<<<<< HEAD
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :userlijsts
=======
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authorizations
>>>>>>> 82e3b88f6d345d0ed360be669cc86cb9e7fbf572
end
