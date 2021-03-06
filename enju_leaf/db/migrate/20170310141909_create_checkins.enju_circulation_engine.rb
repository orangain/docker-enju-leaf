# This migration comes from enju_circulation_engine (originally 32)
class CreateCheckins < ActiveRecord::Migration
  def self.up
    create_table :checkins do |t|
      t.references :item, index: true, foreign_key: true, null: false
      t.references :librarian, index: true
      t.references :basket, index: true
      t.timestamps
    end
  end

  def self.down
    drop_table :checkins
  end
end
