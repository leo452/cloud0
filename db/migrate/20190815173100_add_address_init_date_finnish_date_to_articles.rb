class AddAddressInitDateFinnishDateToArticles < ActiveRecord::Migration[5.0]
  def change
      add_column :articles, :address , :text
      add_column :articles, :initDate , :datetime
      add_column :articles, :finnishDate , :datetime
  end
end
