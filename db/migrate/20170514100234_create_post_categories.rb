class CreatePostCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :post_categories do |t|
      t.belongs_to :post
      t.belongs_to :category
    end
  end
end
