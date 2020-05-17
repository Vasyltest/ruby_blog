class Article < ActiveRecord::Baseend
    validates :title, presence: true
    validates :description, presence: true
end