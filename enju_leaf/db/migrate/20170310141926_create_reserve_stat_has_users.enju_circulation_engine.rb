# This migration comes from enju_circulation_engine (originally 20081220034117)
class CreateReserveStatHasUsers < ActiveRecord::Migration
  def self.up
    create_table :reserve_stat_has_users do |t|
      t.references :user_reserve_stat, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false
      t.integer :reserves_count

      t.timestamps
    end
  end

  def self.down
    drop_table :reserve_stat_has_users
  end
end
