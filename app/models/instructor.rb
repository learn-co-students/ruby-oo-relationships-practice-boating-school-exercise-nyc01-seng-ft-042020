class Instructor
    attr_reader :name

    @@all = [] 

    def initialize(name)
        @name = name
        Instructor.all << self 
    end

    def self.all
        @@all
    end 

    def pass_student(boating_test_name, student)
        BoatingTest.all.find do |boating_test|
            if boating_test.boating_test_name && boating_test.student 
                boating_test.status = "passed"
            end
        end
    end

    def fail_student(boating_test_name, student)
        BoatingTest.all.find do |boating_test|
            if boating_test.boating_test_name && boating_test.student 
                boating_test.status = "failed"
            else 
                BoatingTest.new(boating_test_name, "failed", student, self)
            end
        end
    end

end
