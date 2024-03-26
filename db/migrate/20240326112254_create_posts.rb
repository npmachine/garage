class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :author, null: false, foreign_key: {to_table: :users}

      t.string :title, null: false, default: "", index: { unique: true }
      t.text :body, null: false, default: ""

      t.string :state, null: false, default: ""
      t.string :slug, null: false, default: "", index: { unique: true }

      t.timestamps
    end
  end
end
