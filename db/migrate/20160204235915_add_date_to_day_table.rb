class AddDateToDayTable < ActiveRecord::Migration
  def change
    add_column :days, :date, :datetime
  end
end
