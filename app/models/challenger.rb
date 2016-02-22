class Challenger < ActiveRecord::Base
  extend FriendlyId
  has_many :days


  friendly_id :title, use: :slugged

  validates_presence_of :title
  validates_numericality_of :duration
end
