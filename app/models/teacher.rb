class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students, through: :grade_levels
    
    has_many :subjects
    has_many :students, through: :subjects

    def tenure 
        if self.years_of_experience > 5
            true 
        else false
        end 
    end

    def new_subject(student, subject)
        Subject.create(student: student, teacher: self, subject_name: subject)
        "#{student.full_name} has been enrolled into #{subject} class taught by #{self.last_name}"
    end 

    def create_new_assignment(student, project)
        Assignment.create(student: student, teacher: self, project: project)
    end
end 
