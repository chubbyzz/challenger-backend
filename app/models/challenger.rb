class Challenger < ActiveRecord::Base
  has_many :days

  validates_presence_of :title
  validates_numericality_of :duration
end
