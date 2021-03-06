# This migration comes from enju_circulation_engine (originally 20090831220301)
class CreateLendingPolicies < ActiveRecord::Migration
  def self.up
    create_table :lending_policies do |t|
      t.references :item, index: false, foreign_key: true, null: false
      t.references :user_group, index: false, foreign_key: true, null: false
      t.integer :loan_period, default: 0, null: false
      t.datetime :fixed_due_date
      t.integer :renewal, default: 0, null: false
      t.integer :fine, default: 0, null: false
      t.text :note
      t.integer :position

      t.timestamps
    end
    add_index :lending_policies, [:item_id, :user_group_id], :unique => true
  end

  def self.down
    drop_table :lending_policies
  end
end
