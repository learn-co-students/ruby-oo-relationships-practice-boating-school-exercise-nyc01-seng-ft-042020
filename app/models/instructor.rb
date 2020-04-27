require 'pry'

class Instructor

    @@all = []

    def initialize (name)
        @name = name
        Instructor.all << self
    end

    def self.all 
        @@all
    end

    def pass_student(student, name)
        my_test = BoatingTest.all.find do |test| 
            (test.student == student && test.name == name)
        end
        my_test.status = "passed"
    end

    def fail_student(student, name)
        my_test = BoatingTest.all.find {|test| test.student == student && test.name == name}
        my_test.status = "failed"
    end

end
