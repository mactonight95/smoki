class CreateSmoks < ActiveRecord::Migration[5.1]
  def change
    create_table :smoks do |t|
      t.integer :hp
      t.integer :mp
      t.integer :atk
      t.integer :lvl
      t.integer :exp
      t.references :user, foreign_key: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
