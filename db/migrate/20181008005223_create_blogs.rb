class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.binary :image
      t.text :content
      t.string :category
      t.string :tag
      t.date :date

      t.timestamps
    end
  end
end
