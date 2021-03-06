# This migration comes from enju_circulation_engine (originally 129)
class CreateItemHasUseRestrictions < ActiveRecord::Migration
  def self.up
    create_table :item_has_use_restrictions do |t|
      t.references :item, index: true, foreign_key: true, null: false
      t.references :use_restriction, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end

  def self.down
    drop_table :item_has_use_restrictions
  end
end
