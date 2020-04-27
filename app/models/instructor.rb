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

    def pass_student(student, test)
        match_test = BoatingTest.all.find do |test_name| 
            test_name.test == test && test_name.student == student
        end
        if match_test
            match_test.test_status == "passd"
        else
            BoatingTest.new(student, test, "passed", self)
        end
    end

    def fail_student(student, test)
        match_test = BoatingTest.all.find do |test_name| 
            test_name.test == test && test_name.student == student
            binding.pry
        end
        if match_test
            match_test.test_status == "failed"
        else
            BoatingTest.new(student, test, "failed", self)
        end
    end
   
end
