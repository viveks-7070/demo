class Student < ActiveRecord::Base
	has_many :subjects
	has_many :teaches, through: :subjects
end
