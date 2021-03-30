class AddImagesToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :image, :string
  end
end
