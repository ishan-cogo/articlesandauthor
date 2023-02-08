class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.string :author
      t.date :date
      t.string :body
      t.timestamps
    end
  end
end
