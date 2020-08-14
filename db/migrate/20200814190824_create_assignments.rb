class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.string :project
    end
  end
end
