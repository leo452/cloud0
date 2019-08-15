class AddPlaceToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :place , :text
  end
end
