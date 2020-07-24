class AddRatingToAppearances < ActiveRecord::Migration[5.1]
  def change
    add_column :appearances, :rating, :integter
  end
end
