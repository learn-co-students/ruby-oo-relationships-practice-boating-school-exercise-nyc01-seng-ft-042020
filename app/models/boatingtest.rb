class BoatingTest
    attr_accessor :student, :boating_test_name, :status, :instructor
    @@all = []
    def initialize(student, boating_test_name, status, instructor)
        @student = student
        @boating_test_name = boating_test_name 
        @status = status 
        @instructor = instructor
        BoatingTest.all << self 
    end
    def self.all    
        @@all         
    end 
end

# `BoatingTest` class:
# (* should initialize with Student (Object), a boating test name (String), 
   #  a boating test status (String), and an Instructor (Object))
# * (`BoatingTest.all` returns an array of all boating tests)