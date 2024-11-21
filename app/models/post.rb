class Post < ApplicationRecord
    belongs_to :user

    validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 255 }
    validates :content, presence: true, uniqueness: true, length: { minimum: 5, maximum: 1500 }
end
