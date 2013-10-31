class HoboMigration6 < ActiveRecord::Migration
  def self.up
    drop_table :categories_lists
  end

  def self.down
    create_table "categories_lists", :id => false, :force => true do |t|
      t.integer "category_id"
      t.integer "list_id"
    end
  end
end
