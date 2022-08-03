class Word < ApplicationRecord
    validates :word, presence: true
    validates :defination, presence: true
end
