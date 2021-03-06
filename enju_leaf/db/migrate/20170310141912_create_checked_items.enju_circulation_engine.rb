# This migration comes from enju_circulation_engine (originally 121)
class CreateCheckedItems < ActiveRecord::Migration
  def self.up
    create_table :checked_items do |t|
      t.references :item, index: true, foreign_key: true, null: false
      t.references :basket, index: true, foreign_key: true, null: false
      t.references :librarian, index: true
      t.datetime :due_date, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :checked_items
  end
end
