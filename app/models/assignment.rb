class Assignment < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher

    def self.find_student(project)
        assignment_found =self.all.select do |assignment|
            assignment.project == project
        end
        assignment_found.filter do |instance|
            instance.student 
        end
    end
end 