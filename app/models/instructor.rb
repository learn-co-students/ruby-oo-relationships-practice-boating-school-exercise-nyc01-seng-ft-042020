require 'pry'

class Instructor

    @@all = []
    attr_reader :name


    def initialize(name)
        @name = name
        Instructor.all << self
    end

    def self.all
        @@all
    end
    
    def pass_student(student, test_name)
        test = BoatingTest.all.find {|x| x.student == student && x.test_name == test_name}
        if test
            test.test_status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end

    end

    def fail_student(student, test_name)
        test = BoatingTest.all.find {|x| x.student == student && x.test_name == test_name}
        if test
            test.test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end

    end

end

