class CreateHolds < ActiveRecord::Migration[5.1]
  def change
    create_table :holds do |t|
      t.string :x
      t.string :y
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
