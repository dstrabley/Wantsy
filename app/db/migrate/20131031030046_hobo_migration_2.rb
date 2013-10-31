class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :wants, :list_id, :integer

    add_index :wants, [:list_id]
  end

  def self.down
    remove_column :wants, :list_id

    remove_index :wants, :name => :index_wants_on_list_id rescue ActiveRecord::StatementInvalid
  end
end
