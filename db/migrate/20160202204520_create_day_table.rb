class CreateDayTable < ActiveRecord::Migration
  def change
    create_table :day_tables do |t|
      t.integer :day
      t.integer :challenger_id

      t.index :challenger_id
    end
  end
end
