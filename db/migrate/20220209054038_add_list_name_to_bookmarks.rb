class AddListNameToBookmarks < ActiveRecord::Migration[6.1]
  def change
    add_column :bookmarks, :list_name, :string
  end
end
