class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.integer :marvel_id
      t.string :title
      t.string :issue
      t.string :descripton
      t.integer :page_count
      t.string :thumbnail
      t.string :images
      t.string :creators

      t.timestamps
    end
  end
end
