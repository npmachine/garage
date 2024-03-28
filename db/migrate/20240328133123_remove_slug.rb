class RemoveSlug < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :slug, :string, null: false, default: ""
  end
end
