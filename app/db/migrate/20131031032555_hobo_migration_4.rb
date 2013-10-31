class HoboMigration4 < ActiveRecord::Migration
  def self.up
    remove_column :lists, :category_id

    remove_index :lists, :name => :index_lists_on_category_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :lists, :category_id, :integer

    add_index :lists, [:category_id]
  end
end
