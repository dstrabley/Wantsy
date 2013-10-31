class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :lists do |t|
      t.string   :title
      t.text     :description
      t.date     :expires
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :wants do |t|
      t.string   :title
      t.string   :url
      t.string   :image
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :categories
    drop_table :lists
    drop_table :wants
  end
end
