class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"], message: "is not included in the list" }
end
