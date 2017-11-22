class CreateJedzenies < ActiveRecord::Migration[5.1]
  def change
    create_table :jedzenies do |t|
      t.integer :regen_hp
      t.integer :regen_mp
      t.integer :bonus_exp
      t.references :user, foreign_key: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
