class CreatePotions < ActiveRecord::Migration[5.1]
  def change
    create_table :potions do |t|
      t.integer :bonus_hp
      t.integer :bonus_mp
      t.integer :bonus_atk
      t.integer :bonus_exp
      t.references :user, foreign_key: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
