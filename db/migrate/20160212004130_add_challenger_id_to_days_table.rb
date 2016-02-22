class AddChallengerIdToDaysTable < ActiveRecord::Migration
  def change
    add_column :days, :challenger_id, :integer
    add_index :days, :challenger_id
  end
end
