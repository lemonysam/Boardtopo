class AddBoardIdToProblems < ActiveRecord::Migration[5.1]
  def change
    add_column :problems, :board_id, :integer
    add_index :problems, :board_id
  end
end
