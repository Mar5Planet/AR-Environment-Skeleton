class Subject < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher

    def self.teacher(teacher)
        self.all.select do |subject|
            subject.teacher == teacher
        end 
    end 

    def self.student(student)
        self.all.select do |subject|
            subject.student == student
        end 
    end 

    def self.teachers
        teacher =self.all.map do |subject|
            subject.teacher
        end
        teacher.uniq
    end

end