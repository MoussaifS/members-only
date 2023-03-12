class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
    has_many :posts, class_name: "Post", foreign_key: "id"
    validates :name , presence: true , length: {minimum:3, maximum:10, message: " should be between  3 and 10 letters"} , uniqueness: true
    validates :password , presence: true , length: {minimum:3, maximum:10 ,message: " should be greater than 3 and less than 10"}


    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def email_required? false end

  def email_changed? false end

end

