class AddImageToWatchlists < ActiveRecord::Migration[6.1]
  def change
    add_column :watchlists, :image, :string
  end
end
