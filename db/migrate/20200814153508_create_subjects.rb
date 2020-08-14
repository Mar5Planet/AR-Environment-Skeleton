class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.string :subject_name
    end 
  end
end
