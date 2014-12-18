class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
   has_many :stories

   has_many :comments, :through: :stories
=======
  has_many :user_comments
  has_many :comments, through: :user_comments

  has_many :stories
>>>>>>> 53e812dcc84eab8ace208cc5df5c48eaed389de9
end
