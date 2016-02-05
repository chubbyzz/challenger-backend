class Day < ActiveRecord::Base
  after_initialize :init

  belongs_to :challenger

  def init
    self.date ||= Date.today if new_record?
  end
end
