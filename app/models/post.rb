class Post < ApplicationRecord
    belongs_to :users, class_name: "users", foreign_key: "id"
    validates :title , presence: true , length: {minimum:3, maximum:10} , uniqueness: true
    validates :body ,
end
