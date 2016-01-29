class CreateChallengers < ActiveRecord::Migration
  def change
    create_table :challengers do |t|
      t.string 'title', null: false
      t.text 'description'
      t.integer 'duration', default: 30
      t.timestamps null: false
    end
  end
end
