class CreateProblems < ActiveRecord::Migration[5.1]
  def change
    create_table :problems do |t|
      t.string :name
      t.timestamps
    end
    create_table :problemHolds do |t|
      t.belongs_to :problem, index: true
      t.belongs_to :hold, index: true
      t.timestamps
    end
  end
end
