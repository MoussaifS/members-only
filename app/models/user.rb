class User < ApplicationRecord
    has_many :posts, class_name: "post", foreign_key: "id"
    validates :name , presence: true , length: {minimum:3, maximum:10} , uniqueness: true
    validates :password , presence: true , length: {minimum:3, maximum:10 } 
end
