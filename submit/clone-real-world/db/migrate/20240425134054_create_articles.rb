class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.text :body
      t.text :address
      t.string :slug
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
