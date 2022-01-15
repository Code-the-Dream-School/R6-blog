class Post < ApplicationRecord
    has_many :comments, inverse_of: 'post'
    validates :title, :body, presence: true
end
