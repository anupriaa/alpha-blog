class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      #timestamp can be added by
      #t.timestamp
    end
  end
end
