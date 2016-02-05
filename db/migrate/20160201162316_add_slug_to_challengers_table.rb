class AddSlugToChallengersTable < ActiveRecord::Migration
  def change
    add_column :challengers,:slug, :string
  end
end
