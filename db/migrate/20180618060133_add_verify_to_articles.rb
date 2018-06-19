class AddVerifyToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :verify, :boolean 
  end
end
