class CreateJoinTableProblemsHolds < ActiveRecord::Migration[5.1]
  def change
    create_join_table :problems, :holds do |t|
      # t.index [:problem_id, :hold_id]
      # t.index [:hold_id, :problem_id]
    end
  end
end
