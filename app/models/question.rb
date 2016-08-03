class Question < ApplicationRecord
	belongs_to :person
	has_many :answer, through: :person
end
