class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  if Rails.env.production?
    devise :database_authenticatable, :confirmable,
           :recoverable, :rememberable, :trackable, :validatable
  else
    devise :database_authenticatable, :registerable, :confirmable,
           :recoverable, :rememberable, :trackable, :validatable
  end
  has_many :blog_post
  has_many :link

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,  :presence   => true,
                     :format     => { :with => email_regex },
                     :uniqueness => { :case_sensitive => false }
end
