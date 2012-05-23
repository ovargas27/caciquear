class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.date :published_at
      t.string :isbn_10
      t.string :isbn_13

      t.timestamps
    end
  end
end
