#this class edits the articles table
class EditArticles < ActiveRecord::Migration
  def change
    #function add_column :tablename, :attribute, :type
    add_column :articles, :description, :text
    #these exact attributes are tracked by rails
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
