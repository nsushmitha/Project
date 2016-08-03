class Person < ApplicationRecord
	has_many :question 
	has_many :answer, through: :question
end
