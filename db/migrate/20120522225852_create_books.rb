class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.date :published_at
      t.string :isbn-10
      t.string :isbn-13

      t.timestamps
    end
  end
end
