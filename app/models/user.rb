class User < ApplicationRecord
    has_many :posts, class_name: "post", foreign_key: "id"
    validates :name , presence: true , length: {minimum:3, maximum:10, message: " should be between  3 and 10 letters"} , uniqueness: true
    validates :password , presence: true , length: {minimum:3, maximum:10 ,message: " should be greater than 3 and less than 10"}

end
