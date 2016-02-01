class Challenger < ActiveRecord::Base
	validates :title, presence: true
end
